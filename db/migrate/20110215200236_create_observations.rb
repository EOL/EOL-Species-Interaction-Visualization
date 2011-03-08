class CreateObservations < ActiveRecord::Migration
  def self.up
    create_table :observations do |t|
      t.integer :left_taxon_id, :null => false
      t.integer :right_taxon_id, :null => false      
      t.integer :interaction_id, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :observations
  end
end
