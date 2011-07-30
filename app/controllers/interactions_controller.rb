class InteractionsController < ApplicationController
  
  respond_to :xml, :json
    
  include Resourceful

  # this is a custom query method, so instead of using the resourceful 'index' method (which does a model object find(:all),
  # we are calling a function defined resourceful that generates the data we need to return using a custom query, which may include join tables
  def index_jqgrid
    
    sql_query="select i.id,i.name as interaction_name,interaction_category_id,ic.name as category_name,i.created_at,i.updated_at from interactions i inner join interaction_categories ic on ic.id=interaction_category_id"    
    @interactions=run_custom_query(sql_query)
    respond_with(@interactions)
  
  end
  
end
