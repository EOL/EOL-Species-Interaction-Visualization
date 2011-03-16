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
      build_query+=":order=>'#{sort_by} #{sort_order}'," if sort_by
      
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
    eval("@#{model_name} = #{model_class_name}.create(params[:#{model_name.downcase}])")    
    respond_with(eval("@#{model_name}"))
  end
      
  def show
    respond_with(eval("@#{model_name} = #{model_class_name}.find(params[:id])"))
  end

  def edit
    respond_with(eval("@#{model_name} = #{model_class_name}.find(params[:id])"))
  end

  def update
    eval("@#{model_name} = #{model_class_name}.find(params[:id])")
    eval("@#{model_name}.update_attributes(params[:#{model_name}])")
    respond_with(eval("@#{model_name}"))
  end

  def destroy
    eval("@#{model_name} = #{model_class_name}.find(params[:id])")    
    eval("@#{model_name}.destroy")
    respond_with(eval("@#{model_name}"))
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
        # jqgrid has the option for a multi-select delete, in which case we will have an array of ids to deal with
        params[:id].split(',').each {|id| eval("#{model_class_name}.find(id).destroy") } 
        respond_with(eval("#{model_class_name}.new"))       
      when 'add'
        clean_params_hash      
        # remove 'id' paramaters before passing the params to Rails, since this is a new model object
        eval("params[:#{model_name}].delete(:id)")    
        self.create
      else
        render :nothing=>true
    end
    
  end
  
  private
  def clean_params_hash
    # remove 'oper' paramater before passing the params to Rails, since it's not part of the model object
    eval("params[:#{model_name}].delete(:oper)")        
  end

end