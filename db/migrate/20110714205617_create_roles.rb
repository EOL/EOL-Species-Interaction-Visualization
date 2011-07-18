class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.timestamps
    end
    # note: role names should be store in CamelizedFormat
    # role names are referenced in the 'Ability' model
    Role.create(:id=>1,:name=>'Admin')
    Role.create(:id=>2,:name=>'Editor')
    Role.create(:id=>3,:name=>'DataEntry')    
  end
 
  def self.down
    drop_table :roles
  end
end