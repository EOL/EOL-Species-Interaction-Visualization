class Taxon < ActiveRecord::Base
  
  validates_inclusion_of :rank, :in => Rank.list
  validates_presence_of :entered_name
   
  has_and_belongs_to_many :ecosystems
  has_many :taxonomies
  has_many :child_observations, :class_name=>'Observation', :foreign_key => 'left_taxon_id'
  has_many :parent_observations, :class_name=>'Observation', :foreign_key => 'right_taxon_id'
 
  scope :with_name_like, lambda {|str| 
    { :conditions => ['lower(scientific_name) like ? OR lower(entered_name) like ?', %(%#{str.downcase}%),  %(%#{str.downcase}%)]}
  }
 
  def eol_taxon?
    !self.eol_taxon_id.nil?
  end
  
  def self.ranks
    Rank.list
  end
  
  def name
    self.scientific_name || self.entered_name
  end
  
  # do some name cleansing before calling EOL API
  def name_for_searching
    URI.escape(entered_name).gsub('.','')
  end
  
  def rank
    read_attribute(:rank) == nil ? "species".to_sym : read_attribute(:rank).to_sym
  end

  def rank= (value)
    write_attribute(:rank, value.to_s.downcase.strip)
  end
 
end
