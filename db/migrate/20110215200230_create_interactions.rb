class CreateInteractions < ActiveRecord::Migration
  def self.up
    create_table :interactions do |t|
      t.string :name, :null=>false, :limit=>500
      t.integer :interaction_category_id, :null=>false
      t.timestamps
    end
  end

  def self.down
    drop_table :interactions
  end
end
