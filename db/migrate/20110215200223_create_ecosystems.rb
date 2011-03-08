class CreateEcosystems < ActiveRecord::Migration
  def self.up
    create_table :ecosystems do |t|
      t.string :name, :null=>false, :limit=>500
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :ecosystems
  end
end
