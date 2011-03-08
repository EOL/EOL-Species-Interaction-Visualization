class DefaultController < ApplicationController
  
  respond_to :xml, :json, :html
    
  def index
    
    @interaction_categories=InteractionCategory.find(:all)
    
    @ecosystem=Ecosystem.new
    @interaction=Interaction.new
    
  end
    
end
