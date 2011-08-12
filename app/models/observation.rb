class Observation < ActiveRecord::Base

  belongs_to :interaction
  belongs_to :user
  belongs_to :parent_taxon, :class_name=>'Taxon', :foreign_key=>'left_taxon_id'
  belongs_to :child_taxon, :class_name=>'Taxon', :foreign_key=>'right_taxon_id'
  
  validates_presence_of :left_taxon_id, :message=>'^First taxon name was not found in the system.'
  validates_presence_of :right_taxon_id, :message=>'^Second taxon name was not found in the system.'
  validates_presence_of :interaction_id, :message=>'^Please select an interaction.'
   
  def self.find_by_interaction_and_ecosystem(interaction,ecosystem)
    Observation.find_by_sql(["select o.id,o.left_taxon_id,o.right_taxon_id,t.scientific_name,t.rank from observations o,taxa t,ecosystems_taxa et where interaction_id=? and o.left_taxon_id=t.id and et.taxon_id=t.id and et.ecosystem_id=?",interaction.id,ecosystem.id])
  end
  
end
