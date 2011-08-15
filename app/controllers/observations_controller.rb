class ObservationsController < ApplicationController
  
  respond_to :xml, :json
    
  include Resourceful

  # this is a custom query method, so instead of using the resourceful 'index' method (which does a model object find(:all),
  # we are calling a function defined resourceful that generates the data we need to return using a custom query, which may include join tables
  def index_jqgrid
    sql_query="select o.id,i.name as interaction_name,ic.name as interaction_category_name,o.left_taxon_id,o.right_taxon_id,t1.rank as left_rank,t2.rank as right_rank,o.created_at,"
    sql_query += "case when t1.scientific_name <> '' then t1.scientific_name else t1.entered_name END as left_taxon_name,"
    sql_query += "case when t2.scientific_name <> '' then t2.scientific_name else t2.entered_name END as right_taxon_name "
    sql_query += " from observations o,taxa t1,taxa t2,interactions i,interaction_categories ic "
    where_clause = " where o.left_taxon_id=t1.id and o.right_taxon_id=t2.id and i.id=o.interaction_id and i.interaction_category_id=ic.id"
    @observations=run_custom_query(sql_query,where_clause)
    respond_with(@observations)
  end
    
        
end
