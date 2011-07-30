class AddUserid < ActiveRecord::Migration
  def self.up
    add_column :taxa, :user_id, :integer, {:null=>false, :default => 1}
    add_column :ecosystems, :user_id, :integer, {:null=>false, :default => 1}
    add_column :interactions, :user_id, :integer, {:null=>false, :default => 1}
    add_column :interaction_categories, :user_id, :integer, {:null=>false, :default => 1}
    add_column :observations, :user_id, :integer, {:null=>false, :default => 1}
  end

  def self.down
    remove_column :taxa, :user_id
    remove_column :ecosystems, :user_id
    remove_column :interactions, :user_id
    remove_column :interaction_categories
    remove_column :observations, :user_id
  end
end
