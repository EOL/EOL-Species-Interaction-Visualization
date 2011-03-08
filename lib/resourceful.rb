module Resourceful

  def model_name
    controller_name.singularize.camelize
  end
          
  def index
    result_set=eval("#{model_name}.all")
    
    if request[:list]  # return a simple of list of elements in an array, with the column name to be returned specified as the value of the "list" parameter

      eval("@#{model_name.downcase}=Array.new")
      result_set.each {|entry| eval("@#{model_name.downcase} << entry.#{request[:list]}")}

    elsif request[:jqgrid] # if set to true, return data as expected by the jqGrid plugin, it will return all columns in the model, so use jqGrid to control which ones you need
      
      on_page=params[:page] || 1
      rows_to_return=params[:rows] || 10
      sort_by=params[:sidx]
      sort_order=params[:sord] || "asc"
      
      search_field=params[:searchField]
      search_string=params[:searchString]
      search_operator=params[:searchOper] || "cn" # default to contains
      
      offset=rows_to_return.to_i*on_page.to_i - rows_to_return.to_i
      offset = 0 if offset < 0
      
      total_pages=(result_set.size/rows_to_return.to_f).ceil
      
      eval("@#{model_name.downcase}=Hash.new")
      eval("@#{model_name.downcase}[:total]=total_pages.to_s")
      eval("@#{model_name.downcase}[:page]=on_page.to_s")
      eval("@#{model_name.downcase}[:records]=result_set.size.to_s")
      
      build_query=":limit=>rows_to_return,:offset=>offset"
      build_query+=",:order=>'#{sort_by} #{sort_order}'" if sort_by
      
      if search_field
        case search_operator
          when "cn" then build_query+=",:conditions=>[\"#{search_field} like ?\",\"%#{search_string}%\"]"
          when "bw" then build_query+=",:conditions=>[\"#{search_field} like ?\",\"#{search_string}%\"]"
          when "ew" then build_query+=",:conditions=>[\"#{search_field} like ?\",\"%#{search_string}\"]"
          when "eq" then build_query+=",:conditions=>[\"#{search_field} = ?\",\"#{search_string}\"]"
        end
      end
      
      page_of_result_set=eval("#{model_name}.find(:all,#{build_query})")
            
      rows=Array.new
      page_of_result_set.each {|entry| rows << entry.attributes}
      
      eval("@#{model_name.downcase}[:rows] = rows")
      
    else # default response is the full set of model objects

      eval("@#{model_name.downcase}=result_set")

    end

    respond_with(eval("@#{model_name.downcase}"))

  end

  def new
    respond_with(eval("@#{model_name.downcase} = #{model_name}.new"))
  end

  def create
    eval("@#{model_name.downcase} = #{model_name}.create(params[:#{model_name.downcase}])")    
    respond_with(eval("@#{model_name.downcase}"))
  end
      
  def show
    respond_with(eval("@#{model_name.downcase} = #{model_name}.find(params[:id])"))
  end

  def edit
    respond_with(eval("@#{model_name.downcase} = #{model_name}.find(params[:id])"))
  end

  def update
    eval("@#{model_name.downcase} = #{model_name}.find(params[:id])")
    eval("@#{model_name.downcase}.update_attributes(params[:#{model_name.downcase}])")
    respond_with(eval("@#{model_name.downcase}"))
  end

  def destroy
    eval("#{model_name}.destroy(params[:id])")
    render :nothing=>true
  end

  # special methods so we can route to restful requests made by a regular post coming from the jqGrid plugin
  def jqgrid

    # grab the model name from the params hash (that we inserted when posting) and setup the traditional params model hash that rails expects
    posted_model_name=params[:model]
    params_hash=eval("params[:#{posted_model_name}]") if posted_model_name != nil
    
    # the action type will help us route the request as needed, and is added by jqGrid, it's either at the root level of the rash, or under the model object
    action=params[:oper] || params_hash[:oper]

    case action
      when 'edit' 
        # remove 'oper' paramater before passing the params to Rails, since it's not part of the model object
        eval("params[:#{params[:model]}].delete(:oper)")
        # grab the model id and insert into it's railish place in the params hash
        params[:id]=params_hash[:id]
        self.update
      when 'del'      
        self.destroy
      when 'add'
        self.create
      else
        render :nothing=>true
    end
    
  end
  
end