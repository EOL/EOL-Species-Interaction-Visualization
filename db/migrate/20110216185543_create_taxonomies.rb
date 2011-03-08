class CreateTaxonomies < ActiveRecord::Migration
  def self.up
    create_table :taxonomies do |t|
      t.integer :taxon_id, :null => false
      t.boolean :default, :default=>true
      t.string :class_rank, :limit=>200
      t.string :order, :limit=>200
      t.string :super_family, :limit=>200
      t.string :family, :limit=>200
      t.string :sub_family, :limit=>200
      t.string :tribe, :limit=>200
      t.string :genus, :limit=>200
      t.string :species, :limit=>200
      t.string :sub_species, :limit=>200
      t.timestamps
    end
  end

  def self.down
    drop_table :taxonomies
  end
end
