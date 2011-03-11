class EcosystemsTaxaController < ApplicationController
  
  respond_to :xml, :json
  
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
