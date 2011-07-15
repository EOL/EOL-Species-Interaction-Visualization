class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :token_authenticatable, :encryptable

  has_and_belongs_to_many :roles

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  after_create :add_to_roles
  
  def add_to_roles
    self.roles << Role.find_by_name('DataEntry') # by default, add new users to data entry role
  end
  
  def role?(role)
      return !!self.roles.find_by_name(role.to_s.camelize)
  end
  
  def no_role?
      return !!self.roles.empty?
  end
  
  def display_roles
    output=[]
    self.roles.each {|role| output << role.name}
    output.join(',')
  end
  
end
