class EcosystemsController < ApplicationController
  
  respond_to :xml, :json
  
  include Resourceful

  # we need a special jqgrid selector only method since we need to add some join tables
   def index_jqgrid

     base_query="select e.id,e.name,e.biome_id,b.name as biome_name,e.created_at,e.updated_at from ecosystems e left outer join biomes b on e.biome_id=b.id"
     result_set_size=Ecosystem.count

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
       total_pages=(result_set_size/rows_to_return.to_f).ceil
     else
       offset=0
       total_pages=1      
     end

     @ecosystems=Hash.new
     @ecosystems[:total]=total_pages.to_s
     @ecosystems[:page]=on_page.to_s
     @ecosystems[:records]=result_set_size.to_s

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

     page_of_result_set=Interaction.find_by_sql("#{base_query} #{build_query}")

     rows=Array.new
     page_of_result_set.each {|entry| rows << entry.attributes}

     @ecosystems[:rows] = rows

     respond_with(@ecosystems)

   end
  
end
