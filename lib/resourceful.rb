module Resourceful

  def model_class_name
    controller_name.singularize.camelize
  end
  
  def model_name
    model_class_name.downcase
  end
          
  def index
    result_set=eval("#{model_class_name}.all")
    
    if params[:list]  # return a simple of list of elements in an array, with the column name to be returned specified as the value of the "list" parameter

      eval("@#{model_name}=Array.new")
      result_set.each {|entry| eval("@#{model_name} << entry.#{params[:list]}")}

    elsif params[:jqgrid] # if set to true, return data as expected by the jqGrid plugin, it will return all columns in the model, so use jqGrid to control which ones you need
      
      on_page=params[:page] || 1
      rows_to_return=params[:rows] || "30"
      sort_by=params[:sidx]
      sort_order=params[:sord] || "asc"
      
      search_field=params[:searchField]
      search_string=params[:searchString]
      search_operator=params[:searchOper] || "cn" # default to contains
      
      if rows_to_return.downcase != "all"
        offset=rows_to_return.to_i*on_page.to_i - rows_to_return.to_i
        offset = 0 if offset < 0
        total_pages=(result_set.size/rows_to_return.to_f).ceil
      else
        offset=0
        total_pages=1
        on_page=1
      end
            
      eval("@#{model_name}=Hash.new")
      eval("@#{model_name}[:total]=total_pages.to_s")
      eval("@#{model_name}[:page]=on_page.to_s")
      eval("@#{model_name}[:records]=result_set.size.to_s")
      
      build_query=","
      build_query+=":limit=>rows_to_return,:offset=>offset," unless rows_to_return.to_s.downcase == "all"
      build_query+=":order=>'#{sort_by} #{sort_order}'" if sort_by
      
      if search_field
        case search_operator
          when "cn" then build_query+=",:conditions=>[\"#{search_field} like ?\",\"%#{search_string}%\"]"
          when "bw" then build_query+=",:conditions=>[\"#{search_field} like ?\",\"#{search_string}%\"]"
          when "ew" then build_query+=",:conditions=>[\"#{search_field} like ?\",\"%#{search_string}\"]"
          when "eq" then build_query+=",:conditions=>[\"#{search_field} = ?\",\"#{search_string}\"]"
        end
      end
      
      page_of_result_set=eval("#{model_class_name}.find(:all#{build_query})")
            
      rows=Array.new
      page_of_result_set.each {|entry| rows << entry.attributes}
      
      eval("@#{model_name}[:rows] = rows")
      
    else # default response is the full set of model objects

      eval("@#{model_name}=result_set")

    end

    respond_with(eval("@#{model_name}"))

  end

  def new
    respond_with(eval("@#{model_name} = #{model_class_name}.new"))
  end

  def create
    if eval("can? :create, :#{model_name}")    
      eval("@#{model_name} = #{model_class_name}.create(params[:#{model_name.downcase}])")    
      # if model object has a user_id column, associate with logged in user upon creation
      eval("@#{model_name}.update_attribute(:user_id,current_user.id) if @#{model_name}.respond_to?(:user_id)")          
      respond_with(eval("@#{model_name}"))
    else
      not_authorized    
    end
  end
      
  def show
    respond_with(eval("@#{model_name} = #{model_class_name}.find(params[:id])"))
  end

  def edit
    respond_with(eval("@#{model_name} = #{model_class_name}.find(params[:id])"))
  end

  def update
    if eval("can? :update, :#{model_name}")    
      eval("@#{model_name} = #{model_class_name}.find(params[:id])")
      eval("@#{model_name}.update_attributes(params[:#{model_name}])")
      respond_with(eval("@#{model_name}"))
    else
      not_authorized      
    end
  end

  def destroy
    if eval("can? :destroy, :#{model_name}")    
      eval("@#{model_name} = #{model_class_name}.find(params[:id])")    
      eval("@#{model_name}.destroy")
      respond_with(eval("@#{model_name}"))
    else
      not_authorized    
    end
  end

  # export full model to CSV
  def export
  
     results=eval("#{model_class_name}.find(:all)")
     outfile=eval("'#{model_name}_#{Time.now.strftime('%m-%d-%Y')}.csv'")
     column_names=eval("#{model_class_name}.column_names")
     
      csv_data = CSV.generate do |csv|
        csv << column_names
        results.each do |result| 
          data_row = []
          column_names.each {|column| data_row << result[column]}
          csv << data_row
        end
      end

      send_data csv_data,
        :type => 'text/csv; charset=iso-8859-1; header=present',
        :disposition => "attachment; filename=#{outfile}"
    
  end

  # special method so we can route to restful requests made by a regular post to this url coming from the jqGrid plugin (works for update, add and delete)
  def actions_jqgrid

    # setup the traditional params model hash that rails expects
    params_hash=eval("params[:#{model_name}]")
    
    # the action type will help us route the request as needed, and is added by jqGrid, it's either at the root level of the hash, or under the model object
    action=params[:oper] || params_hash[:oper]

    case action
      when 'edit' 
          clean_params_hash
          # grab the model id and insert into it's railish place in the params hash
          params[:id]=params_hash[:id]
          self.update
      when 'del'      
          if eval("can? :destroy, #{model_class_name}")    
            params[:id].split(',').each {|id| eval("#{model_class_name}.find(id).destroy") } 
            respond_with(eval("#{model_class_name}.new"))       
          else
            not_authorized                
          end 
      when 'add'
          clean_params_hash      
          # remove 'id' paramaters before passing the params to Rails, since this is a new model object
          eval("params[:#{model_name}].delete(:id)")    
          self.create
      else
        not_authorized
    end
    
  end
  
  private
  def clean_params_hash
    # remove 'oper' paramater before passing the params to Rails, since it's not part of the model object
    eval("params.delete(:oper)")        
    eval("params[:#{model_name}].delete(:oper) if params[:#{model_name}]")     
    # remove 'password' parameter if it's blank so admin's can update users without having to change the password all the time (blank means no change)
    eval("params[:#{model_name}].delete(:password) if params[:#{model_name}][:password].blank?")         
  end

  def run_custom_query(base_query)
       # this method can be called if you need an 'index' action for a model, but need to specify a custom query
       # for example, if you need a join table instead of just a regular find on a model object

       result_set=eval("#{model_class_name}.find_by_sql(\"#{base_query}\")")

       on_page=params[:page] || 1
       rows_to_return=params[:rows] || "30"
       sort_by=params[:sidx]
       sort_order=params[:sord] || "asc"

       search_field=params[:searchField]
       search_string=params[:searchString]
       search_operator=params[:searchOper] || "cn" # default to contains

       if rows_to_return.downcase != "all"
         offset=rows_to_return.to_i*on_page.to_i - rows_to_return.to_i
         offset = 0 if offset < 0
         total_pages=(result_set.size/rows_to_return.to_f).ceil
       else
         offset=0
         total_pages=1      
       end

       eval("@#{model_name}=Hash.new")
       eval("@#{model_name}[:total]=total_pages.to_s")
       eval("@#{model_name}[:page]=on_page.to_s")
       eval("@#{model_name}[:records]=result_set.size.to_s")

       build_query=""

       if search_field
         case search_operator
           when "cn" then build_query+=" where #{search_field} like '%#{search_string}%'"
           when "bw" then build_query+=" where #{search_field} like '#{search_string}%'"
           when "ew" then build_query+=" where #{search_field} like '%#{search_string}%'"
           when "eq" then build_query+=" where #{search_field} = '#{search_string}'"
         end
       end
       build_query+=" order by #{sort_by} #{sort_order}" if sort_by
       build_query+=" limit #{rows_to_return} offset #{offset} " unless rows_to_return.to_s.downcase == "all"

       page_of_result_set=eval("#{model_class_name}.find_by_sql(\"#{base_query} #{build_query}\")")

       rows=Array.new
       page_of_result_set.each {|entry| rows << entry.attributes}

       eval("@#{model_name}[:rows] = rows")

       return eval("@#{model_name}")
  
  end

end