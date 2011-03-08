class ObservationsController < ApplicationController
  
  respond_to :xml, :json
    
  include Resourceful

  def find_by_interaction
    observations=Observation.find_all_by_interaction_id(params[:interaction_id],:include=>[:parent_taxon,:child_taxon])    
    @result_set=Array.new
    observations.each do |o|
      result=Hash.new

      parent_ecosystems=Array.new
      child_ecosystems=Array.new
      o.parent_taxon.ecosystems.each {|e| parent_ecosystems << {:id=>e.id,:name=>e.name} } if o.parent_taxon.ecosystems.size > 0
      o.child_taxon.ecosystems.each {|e| child_ecosystems << {:id=>e.id,:name=>e.name} } if o.child_taxon.ecosystems.size > 0

      result[:id]=o.id
      result[:interaction_name]=o.interaction.name
      result[:parent_taxon]={:id=>o.left_taxon_id,:scientific_name=>o.parent_taxon.scientific_name,:ecosystems=>parent_ecosystems}
      result[:child_taxon]={:id=>o.right_taxon_id,:scientific_name=>o.child_taxon.scientific_name,:ecosystems=>child_ecosystems}

      @result_set << result

    end
    respond_with(@result_set)
  end
        
end
