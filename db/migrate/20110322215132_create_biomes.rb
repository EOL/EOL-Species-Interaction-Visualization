class CreateBiomes < ActiveRecord::Migration
  def self.up
    create_table :biomes do |t|
      t.string :name
      t.integer :parent_id
      t.integer :sort_order, :default => 100      
      t.timestamps
    end
  end

  def self.down
    drop_table :biomes
  end
end
