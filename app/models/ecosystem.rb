class Ecosystem < ActiveRecord::Base

  belongs_to :biome
  belongs_to :user
  has_and_belongs_to_many :taxa
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
end
