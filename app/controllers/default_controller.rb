class DefaultController < ApplicationController
  
  respond_to :xml, :json, :html
    
  def index
    
    interaction_categories=InteractionCategory.find(:all, :order=>'name asc')
    @interaction_categories_values=""
    interaction_categories.each {|category| @interaction_categories_values += "#{category.id}:'#{category.name}',"} 
    @interaction_categories_values.chomp!(",")
    
  end
    
end
