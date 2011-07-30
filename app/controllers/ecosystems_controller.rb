class EcosystemsController < ApplicationController
  
  respond_to :xml, :json
  
  include Resourceful

  # this is a custom query method, so instead of using the resourceful 'index' method (which does a model object find(:all),
  # we are calling a function defined resourceful that generates the data we need to return using a custom query, which may include join tables
   def index_jqgrid

     sql_query="select e.id,e.description,e.name as ecosystem_name,e.biome_id,b.name as biome_name,e.created_at,e.updated_at from ecosystems e left outer join biomes b on e.biome_id=b.id"
     @ecosystems=run_custom_query(sql_query)
     respond_with(@ecosystems)

   end

   # add taxa to the given ecosystem
   def add_taxa

     ecosystems_ids=params[:ecosystems_ids].split(',')
     taxa_ids=params[:taxa_ids].split(',')

     taxa_ids.each do |taxon_id|
       t=Taxon.find(taxon_id)
       ecosystems_ids.each do |ecosystem_id|
         e=Ecosystem.find(ecosystem_id)
         t.ecosystems << e unless t.ecosystems.include?(e)
       end
     end

     respond_to do |format|
       format.xml { render :nothing => true }
       format.json { render :json => nil }
     end

   end
  
end
