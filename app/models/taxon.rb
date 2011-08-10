class Taxon < ActiveRecord::Base
  
  validates_inclusion_of :rank, :in => Rank.list
  validates_presence_of :entered_name, :message=>'^Taxon name can\'t be blank.'
  validates_uniqueness_of :entered_name, :message=>'^Taxon name is already in the system.'
   
  has_and_belongs_to_many :ecosystems
  belongs_to :user

  has_many :taxonomies, :dependent=>:destroy
  has_many :child_observations, :class_name=>'Observation', :foreign_key => 'left_taxon_id', :dependent=>:destroy
  has_many :parent_observations, :class_name=>'Observation', :foreign_key => 'right_taxon_id', :dependent=>:destroy
 
  scope :with_name_like, lambda {|str| 
    { :conditions => ['lower(scientific_name) like ? OR lower(entered_name) like ?', %(%#{str.downcase}%),  %(%#{str.downcase}%)]}
  }

  scope :with_name, lambda {|str| 
    { :limit=>1,:conditions => ['lower(scientific_name) = ? OR lower(entered_name) = ?', %(#{str.downcase}),  %(#{str.downcase})]}
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
