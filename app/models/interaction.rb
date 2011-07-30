class Interaction < ActiveRecord::Base
  
  belongs_to :interaction_category
  belongs_to :user
  has_many :observations, :dependent=>:destroy
  
  validates_presence_of :name, :interaction_category_id
  validates_uniqueness_of :name
  
end
