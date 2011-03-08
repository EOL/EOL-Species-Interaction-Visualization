class TaxaController < ApplicationController
  
  respond_to :xml, :json
    
  include Resourceful
  
  def search
    respond_with(Taxon.with_name_like(params[:name]))
  end
    
end
