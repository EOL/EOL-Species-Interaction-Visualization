class InteractionsController < ApplicationController
  
  respond_to :xml, :json
    
  include Resourceful

  # we need a special jqgrid selector only method since we need to add some join tables
  def index_jqgrid
    
    result_set=Interaction.find_by_sql('select i.id,i.name,interaction_category_id,ic.name as category_name,i.created_at,i.updated_at from interactions i inner join interaction_categories ic on ic.id=interaction_category_id')    
    
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
        
    @interaction=Hash.new
    @interaction[:total]=total_pages.to_s
    @interaction[:page]=on_page.to_s
    @interaction[:records]=result_set.size.to_s
    
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
    
    page_of_result_set=Interaction.find_by_sql("select i.id,i.name as interaction_name,interaction_category_id,ic.name as category_name,i.created_at,i.updated_at from interactions i inner join interaction_categories ic on ic.id=interaction_category_id #{build_query}")
          
    rows=Array.new
    page_of_result_set.each {|entry| rows << entry.attributes}
    
    @interaction[:rows] = rows
      
    respond_with(@interaction)

  end
  
end
