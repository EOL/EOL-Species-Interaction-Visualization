class ObservationsController < ApplicationController
  
  respond_to :xml, :json
    
  include Resourceful

  # this is a custom query method, so instead of using the resourceful 'index' method (which does a model object find(:all),
  # we are calling a function defined resourceful that generates the data we need to return using a custom query, which may include join tables
  def index_jqgrid
    sql_query="select o.id,o.created_at,i.name as interaction_name,o.left_taxon_id,o.right_taxon_id,t1.scientific_name as left_scientific_name,t1.entered_name as left_entered_name,t1.rank as left_rank,t2.scientific_name as right_scientific_name,t2.entered_name as right_entered_name,t2.rank as right_rank from observations o,taxa t1,taxa t2,interactions i where o.left_taxon_id=t1.id and o.right_taxon_id=t2.id and i.id=o.interaction_id"
    sql_query += " and o.interaction_id=#{params[:interaction_id]}" unless params[:interaction_id].blank? 
    @observations=run_custom_query(sql_query)
    respond_with(@observations)
  end
  
  # a special override method to create an observation from our form
  def create_from_form
    
    return if not (request.xhr? && can?(:create, :observation)) # only allow this call via AJAX and for users that allowed to create observations
        
    # get form values
    left_taxon_name=params[:left_taxon_name]
    right_taxon_name=params[:right_taxon_name]
    interaction_id=params[:interaction_id]
    
    # look up taxa by names entered
    left_taxon=Taxon.with_name(left_taxon_name)
    right_taxon=Taxon.with_name(right_taxon_name)

    # create a validation message if information is missing
    @validation_error=''    
    @validation_error += 'The first taxon you entered was not found in the system. '  if left_taxon_name.blank? || left_taxon.blank?
    @validation_error += 'The second taxon you entered was not found in the system. ' if right_taxon_name.blank? || right_taxon.blank?
    @validation_error += 'You must enter two different taxa. ' if (right_taxon == left_taxon) && !left_taxon_name.blank?
    @validation_error += 'You must select an interaction. ' unless interaction_id
    
    if @validation_error.blank? # create observation record if there aren't any errors
      existing_observation=Observation.where(:left_taxon_id=>left_taxon.first.id,:right_taxon_id=>right_taxon.first.id,:interaction_id=>interaction_id)
      if existing_observation.blank?
        Observation.create(:user_id=>current_user.id,:left_taxon_id=>left_taxon.first.id,:right_taxon_id=>right_taxon.first.id,:interaction_id=>interaction_id)
      else
        @validation_error += 'This observation already exists in the system.'  
      end
    end
    
    render :create_from_form
    
  end
        
end
