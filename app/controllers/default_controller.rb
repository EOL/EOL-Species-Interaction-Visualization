class DefaultController < ApplicationController
  
  respond_to :xml, :json, :html
    
  def index
    
    # pull the interaction categories into a label:value array that we can use to populate the jqGrid edit form for interactions
    interaction_categories=InteractionCategory.find(:all, :order=>'name asc')
    @interaction_categories_values=""
    interaction_categories.each {|category| @interaction_categories_values += "#{category.id}:'#{category.name}',"} 
    @interaction_categories_values.chomp!(",")
    
    # grab interaction categories that have associated interactions and then the initial set of interactions for the observation form
    @interaction_categories_observation_select=InteractionCategory.find_all_with_interactions
    @interactions_observation_select=Interaction.where(:interaction_category_id=>@interaction_categories_observation_select.first.id)
    
  end

          
end
