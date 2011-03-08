class CreateEcosystemsTaxa < ActiveRecord::Migration
  def self.up
    create_table :ecosystems_taxa, :id => false do |t|
      t.integer :taxon_id, :null => false
      t.integer :ecosystem_id, :null => false
    end
    add_index :ecosystems_taxa, [ :taxon_id, :ecosystem_id ], :unique => true
    
  end

  def self.down
    drop_table :ecosystems_taxa
  end
end
