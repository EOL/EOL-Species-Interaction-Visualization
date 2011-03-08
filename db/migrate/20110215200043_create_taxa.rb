class CreateTaxa < ActiveRecord::Migration
  def self.up
    create_table :taxa do |t|
      t.string :common_name, :limit=>200, :null =>false
      t.string :scientific_name, :limit=>400, :null => false
      t.integer :group
      t.string :rank

      t.timestamps
    end
  end

  def self.down
    drop_table :taxa
  end
end
