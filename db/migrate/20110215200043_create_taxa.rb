class CreateTaxa < ActiveRecord::Migration
  def self.up
    create_table :taxa do |t|
      t.string :entered_name, :limit=>200, :null =>false
      t.string :scientific_name, :limit=>400
      t.string :image_url, :limit=>400
      t.datetime :last_eol_update
      t.integer :eol_taxon_id
      t.string :rank
      t.timestamps
    end
  end

  def self.down
    drop_table :taxa
  end
end
