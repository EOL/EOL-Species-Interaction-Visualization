class InteractionCategory < ActiveRecord::Base
  
  has_many :interactions
  validates_presence_of :name
  validates_uniqueness_of :name
  
end
