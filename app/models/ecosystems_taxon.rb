class EcosystemsTaxon < ActiveRecord::Base
  
  has_many :taxa
  has_many :ecosystems
  
  validates_presence_of :taxon_id,:ecosystem_id

end
