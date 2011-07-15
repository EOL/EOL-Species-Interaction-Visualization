class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.timestamps
    end
    create_table :roles_users, :id => false do |t|
      t.references :role, :user
    end
    # note: role names should be store in CamelizedFormat
    # role names are referenced in the 'Ability' model
    Role.create(:name=>'Admin')
    Role.create(:name=>'Editor')
    Role.create(:name=>'DataEntry')    
  end
 
  def self.down
    drop_table :roles
    drop_table :roles_users
  end
end