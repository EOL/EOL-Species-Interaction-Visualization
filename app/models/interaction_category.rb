class InteractionCategory < ActiveRecord::Base
  
  has_many :interactions, :dependent=>:nullify
  belongs_to :user
  
  validates_presence_of :name
  validates_uniqueness_of :name

  # return the list of interaction categories that actually have associated interactions
  def self.find_all_with_interactions
    InteractionCategory.find_by_sql('select distinct(ic.id) as id,ic.name from interactions i inner join interaction_categories ic on ic.id=interaction_category_id order by ic.name ASC')
  end
  
end
