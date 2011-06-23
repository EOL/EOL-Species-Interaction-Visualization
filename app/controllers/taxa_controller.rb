require 'csv'

class TaxaController < ApplicationController
  
  respond_to :xml, :json
  respond_to :html, :only => :eol_match
  
  before_filter :ajax_only, :only=>:confirm_eol_taxon  

  include Resourceful
  
  def search

    respond_with(Taxon.with_name_like(params[:name]))

  end
  
  # export results to CSV
  def export
  
      taxa = Taxon.find(:all, :order => "entered_name ASC")
      outfile = "taxa_" + Time.now.strftime("%m-%d-%Y") + ".csv"

      csv_data = CSV.generate do |csv|
        csv << [
        "id",
        "Entered Name",
        "EOL Scientific Name",
        "EOL Image URL",
        "Last EOL Match",
        "EOL Taxon ID",
        "Entered Date"
        ]
        taxa.each do |taxon|
          csv << [
          taxon.id,
          taxon.entered_name,
          taxon.scientific_name,
          taxon.image_url,
          taxon.last_eol_update,
          taxon.eol_taxon_id,
          taxon.created_at
          ]
        end
      end

      send_data csv_data,
        :type => 'text/csv; charset=iso-8859-1; header=present',
        :disposition => "attachment; filename=#{outfile}"
    
  end
  
  # find all taxa in need of matching and begin the matching process
  def match_to_eol
    
    @total_taxa=Taxon.count(:conditions=>'eol_taxon_id is null or eol_taxon_id=""')
    render :layout=>false
        
  end
  
  # find a specific taxon (if given an ID) or the next taxon to match (if not given an ID) and render a page to display possible matches in EOL and allow user to select      
  def match_taxon_to_eol
    
    @id=params[:id]  
    if @id 
      @taxon=Taxon.find_by_id(@id)
      @auto_match_single = false
    else
      @taxon=Taxon.find(:first,:conditions=>'eol_taxon_id is null or eol_taxon_id=""',:order=>'scientific_name ASC,entered_name ASC') 
      @auto_match_single = true 
    end

    render :layout=>false

  end

  # AJAX ONLY METHODS BELOW
  def confirm_eol_taxon
        
    @taxon=Taxon.find(params[:id])
    @taxon.scientific_name=params[:scientific_name]
    @taxon.eol_taxon_id=params[:eol_id]
    @taxon.image_url=params[:image_url]
    @taxon.last_eol_update=Time.now
    @taxon.save
    
    respond_with(@taxon)
    
  end
  
end
