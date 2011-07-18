class UsersController < ApplicationController

  include Resourceful
  respond_to :xml, :json

  before_filter :check_for_admin_logged_in
  
  # we need a special jqgrid selector only method since we need to add some join tables beyond the regular methods we get from :resourceful
   def index_jqgrid

     base_query="select u.id,u.email,u.last_sign_in_at,r.name from users u left outer join roles r on u.role_id=r.id"
     result_set_size=User.count

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

     @users=Hash.new
     @users[:total]=total_pages.to_s
     @users[:page]=on_page.to_s
     @users[:records]=result_set_size.to_s

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

     page_of_result_set=User.find_by_sql("#{base_query} #{build_query}")

     rows=Array.new
     page_of_result_set.each {|entry| rows << entry.attributes}

     @users[:rows] = rows

     respond_with(@users)

   end
  
end
