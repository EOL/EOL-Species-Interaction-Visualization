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

  # AJAX ONLY METHODS BELOW
  
  # given a interaction category, return an HTML select list of interactions for the user to select (or all interactions if no category given)
  # used to populate the interactions drop down menu for the user, and also to update when the user selects a new interaction category
  def htmlselect_jqgrid

    interaction_category_id=params[:interaction_category_id]
    @reload=params[:reload]
    
    if interaction_category_id
      @interactions=Interaction.where(:interaction_category_id=>interaction_category_id).order('name')
    else
      @interactions=Interaction.order('name')
    end
    
    render :layout=>false
    
  end
    
end
