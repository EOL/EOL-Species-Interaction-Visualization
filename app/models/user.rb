class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :token_authenticatable, :encryptable

  has_and_belongs_to_many :roles

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  def role?(role)
      return !!self.roles.find_by_name(role.to_s.camelize)
  end
  
  def no_role?
      return !!self.roles.empty?
  end
  
end
