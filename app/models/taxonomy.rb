class Taxonomy < ActiveRecord::Base
  
  belongs_to :taxon
  validates_presence_of :taxon_id
  
end
