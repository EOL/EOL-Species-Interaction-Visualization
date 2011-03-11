class InteractionCategoriesController < ApplicationController
  
  respond_to :xml, :json, :html
  
  include Resourceful
  
  # a special method that we can call from jqGrid to spit back html of a select element needed for form editing of interaction types
  def htmlselect_jqgrid
    @interaction_categories=InteractionCategory.find(:all)
    render :layout=>false
  end  
  
end
