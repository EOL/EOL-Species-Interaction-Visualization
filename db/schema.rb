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

ActiveRecord::Schema.define(:version => 20110714205617) do

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

  create_table "roles", :force => true do |t|
    t.string   "name"
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

  create_table "users", :force => true do |t|
    t.integer  "role_id"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password_salt"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",                       :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
