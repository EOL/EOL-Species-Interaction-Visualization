class Taxon < ActiveRecord::Base
  
  validates_inclusion_of :rank, :in => Rank.list
  validates_presence_of :rank, :scientific_name
  validates_uniqueness_of :scientific_name
   
  has_and_belongs_to_many :ecosystems
  has_many :taxonomies
  has_many :child_observations, :class_name=>'Observation', :foreign_key => 'left_taxon_id'
  has_many :parent_observations, :class_name=>'Observation', :foreign_key => 'right_taxon_id'
 
  scope :with_name_like, lambda {|str| 
    { :conditions => ['lower(scientific_name) like ? OR lower(common_name) like ?', %(%#{str.downcase}%),  %(%#{str.downcase}%)]}
  }
 
  def self.ranks
    Rank.list
  end
  
  def name
    self.scientific_name || self.common_name
  end
  
  def rank
    read_attribute(:rank) == nil ? "species".to_sym : read_attribute(:rank).to_sym
  end

  def rank= (value)
    write_attribute(:rank, value.to_s.downcase.strip)
  end
 
end
