class InteractionCategory < ActiveRecord::Base
  
  has_many :interactions, :dependent=>:nullify
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
end
