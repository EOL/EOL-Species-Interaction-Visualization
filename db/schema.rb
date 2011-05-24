# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110322215132) do

  create_table "biomes", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "sort_order", :default => 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ecosystems", :force => true do |t|
    t.string   "name",        :limit => 500,                  :null => false
    t.text     "description"
    t.integer  "biome_id"
    t.integer  "sort_order",                 :default => 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ecosystems_taxa", :id => false, :force => true do |t|
    t.integer "taxon_id",     :null => false
    t.integer "ecosystem_id", :null => false
  end

  add_index "ecosystems_taxa", ["taxon_id", "ecosystem_id"], :name => "index_ecosystems_taxa_on_taxon_id_and_ecosystem_id", :unique => true

  create_table "interaction_categories", :force => true do |t|
    t.string   "name",       :limit => 500, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interactions", :force => true do |t|
    t.string   "name",                    :limit => 500, :null => false
    t.integer  "interaction_category_id",                :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "observations", :force => true do |t|
    t.integer  "left_taxon_id",  :null => false
    t.integer  "right_taxon_id", :null => false
    t.integer  "interaction_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taxa", :force => true do |t|
    t.string   "entered_name",    :limit => 200, :null => false
    t.string   "scientific_name", :limit => 400
    t.string   "image_url",       :limit => 400
    t.datetime "last_eol_update"
    t.integer  "eol_taxon_id"
    t.string   "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taxonomies", :force => true do |t|
    t.integer  "taxon_id",                                      :null => false
    t.boolean  "default",                     :default => true
    t.string   "class_rank",   :limit => 200
    t.string   "order",        :limit => 200
    t.string   "super_family", :limit => 200
    t.string   "family",       :limit => 200
    t.string   "sub_family",   :limit => 200
    t.string   "tribe",        :limit => 200
    t.string   "genus",        :limit => 200
    t.string   "species",      :limit => 200
    t.string   "sub_species",  :limit => 200
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
