class BiomesController < ApplicationController
  
  respond_to :xml, :json, :html
  
  include Resourceful
  
  # a special method that we can call from jqGrid to spit back html of a select element needed for form editing of biomes types
  def htmlselect_jqgrid
    @biomes=Biome.return_tree(:levels=>2)
    render :layout=>false
  end
  
end
