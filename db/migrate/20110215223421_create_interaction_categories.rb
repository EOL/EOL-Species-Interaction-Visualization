class CreateInteractionCategories < ActiveRecord::Migration
  def self.up
    create_table :interaction_categories do |t|
      t.string :name, :limit=>500, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :interaction_categories
  end
end
