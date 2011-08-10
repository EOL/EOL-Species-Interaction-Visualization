class UsersController < ApplicationController

  include Resourceful
  respond_to :xml, :json

  before_filter :check_for_admin_logged_in
  
  # this is a custom query method, so instead of using the resourceful 'index' method (which does a model object find(:all),
  # we are calling a function defined resourceful that generates the data we need to return using a custom query, which may include join tables
   def index_jqgrid

     sql_query="select u.id,u.email,u.last_sign_in_at,r.name as role_name from users u left outer join roles r on u.role_id=r.id"
     @users=run_custom_query(sql_query)
     respond_with(@users)

   end
  
end
