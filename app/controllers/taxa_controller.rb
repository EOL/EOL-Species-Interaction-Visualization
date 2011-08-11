require 'csv'

class TaxaController < ApplicationController
  
  respond_to :xml, :json
  respond_to :html, :only => :eol_match
  
  before_filter :ajax_only, :only=>:confirm_eol_taxon  

  include Resourceful

  # this is a custom query method, so instead of using the resourceful 'index' method (which does a model object find(:all),
  # we are calling a function defined resourceful that generates the data we need to return using a custom query, which may include join tables  
  def index_jqgrid

    sql_query="select t.*,u.email from taxa as t inner join users as u on t.user_id=u.id"
    @taxa=run_custom_query(sql_query)
    respond_with(@taxa)
    
  end
  
  def search

    respond_with(Taxon.with_name_like(params[:name]))

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
      @taxon=Taxon.find(:first,:conditions=>'(eol_taxon_id is null or eol_taxon_id="") AND (last_eol_update is null or last_eol_update="")',:order=>'scientific_name ASC,entered_name ASC') 
      @auto_match_single = true 
    end

    render :layout=>false

  end
  
  # AJAX ONLY METHODS BELOW
  def taxon_name_autocomplete
    
    scientific_names=Taxon.find(:all,:conditions=>["scientific_name like ?","#{params[:term]}%"])
    entered_names=Taxon.find(:all,:conditions=>["entered_name like ?","#{params[:term]}%"])
    results=Array.new
    scientific_names.each {|taxon| results << {:id=>taxon.id,:label=>taxon.scientific_name,:value=>taxon.scientific_name}}
    entered_names.each {|taxon| results << {:id=>taxon.id,:label=>taxon.entered_name,:value=>taxon.entered_name}}
    respond_with (results.uniq)
    
  end
  
  def confirm_eol_taxon
        
    @taxon=Taxon.find(params[:id])
    
    if params[:eol_id]=='none'
      @taxon.eol_taxon_id=nil
    else
      @taxon.scientific_name=params[:scientific_name]
      @taxon.eol_taxon_id=params[:eol_id]
      @taxon.image_url=params[:image_url]
    end
    @taxon.last_eol_update=Time.now
    @taxon.save
    
    respond_with(@taxon)
    
  end
  
end
