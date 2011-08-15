class Interaction < ActiveRecord::Base
  
  belongs_to :interaction_category
  belongs_to :user
  has_many :observations, :dependent=>:destroy
  
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :interaction_category_id, :message=>'^Please select a category.'
  
end
