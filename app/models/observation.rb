class Observation < ActiveRecord::Base

  belongs_to :interaction
  belongs_to :user
  belongs_to :parent_taxon, :class_name=>'Taxon', :foreign_key=>'left_taxon_id'
  belongs_to :child_taxon, :class_name=>'Taxon', :foreign_key=>'right_taxon_id'
  
  validates_presence_of :left_taxon_id, :message=>'^First taxon name was not found in the system.'
  validates_presence_of :right_taxon_id, :message=>'^Second taxon name was not found in the system.'
  validates_presence_of :interaction_id, :message=>'^Please select an interaction.'
  validate :left_taxon_id_and_right_taxon_id_different
  validate :observation_is_unique

  # if we set the observation with a taxon name, it will confirm this taxon name exists in the system, and if so, set the correct id
  def left_taxon_name=(value)
    left_taxon=Taxon.with_name(value)
    value.blank? || left_taxon.empty? || left_taxon.name.blank? ? self.left_taxon_id=nil : self.left_taxon_id=left_taxon.first.id
  end

  def right_taxon_name=(value)
    right_taxon=Taxon.with_name(value)
    value.blank? || right_taxon.empty? || right_taxon.name.blank? ? self.right_taxon_id=nil : self.right_taxon_id=right_taxon.first.id
  end
  
  def left_taxon_name
    taxon=Taxon.where(:id=>self.left_taxon_id)
    taxon[0].name if taxon.size == 1
  end
  
  def right_taxon_name
    taxon=Taxon.where(:id=>self.right_taxon_id)
    taxon[0].name if taxon.size == 1
  end
  
  def left_taxon_id_and_right_taxon_id_different
      errors.add(:base,"^You must select two different taxa for the observation.") if self.left_taxon_id == self.right_taxon_id
  end

  def observation_is_unique
     observation=Observation.where(:left_taxon_id=>self.left_taxon_id,:right_taxon_id=>self.right_taxon_id,:interaction_id=>self.interaction_id).first
     errors.add(:base,"^The observation has already been entered in the system.") if observation && observation.id != self.id
  end

   
  def self.find_by_interaction_and_ecosystem(interaction,ecosystem)
    Observation.find_by_sql(["select o.id,o.left_taxon_id,o.right_taxon_id,t.scientific_name,t.rank from observations o,taxa t,ecosystems_taxa et where interaction_id=? and o.left_taxon_id=t.id and et.taxon_id=t.id and et.ecosystem_id=?",interaction.id,ecosystem.id])
  end
  
end
