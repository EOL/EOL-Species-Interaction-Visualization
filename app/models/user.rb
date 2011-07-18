class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable,
         :recoverable, :rememberable, :trackable, 
         :token_authenticatable, :encryptable

  belongs_to :role

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_id
  
  after_create :add_to_role
  
  def add_to_role
    if self.no_role?
      self.role = Role.find_by_name('DataEntry') # by default, add new users to data entry role
      self.save
    end
  end
  
  def role?(role)
      self.no_role? ? false : role.to_s.camelize == self.role.name
  end
  
  def no_role?
      return !!self.role_id.nil?
  end
    
end
