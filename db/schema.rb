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

ActiveRecord::Schema.define(:version => 20120427000007) do

  create_table "accounts", :force => true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["email"], :name => "index_accounts_on_email"
  add_index "accounts", ["reset_password_token"], :name => "index_accounts_on_reset_password_token"

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email"
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token"

<<<<<<< HEAD
  create_table "test_prefixAddFoodDesc", :id => false, :force => true do |t|
    t.integer  "Food code",                                 :null => false
    t.integer  "Seq num",                                   :null => false
    t.datetime "Start date"
    t.datetime "End date"
    t.string   "Additional food description", :limit => 80
  end

  add_index "test_prefixAddFoodDesc", ["Food code"], :name => "Food code"
  add_index "test_prefixAddFoodDesc", ["Seq num"], :name => "Seq num"
  add_index "test_prefixAddFoodDesc", ["Start date"], :name => "Start date"

  create_table "test_prefixFNDDSNutVal", :id => false, :force => true do |t|
    t.integer  "Food code",      :default => 0, :null => false
    t.integer  "Nutrient code",                 :null => false
    t.datetime "Start date",                    :null => false
    t.datetime "End date"
    t.float    "Nutrient value"
  end

  add_index "test_prefixFNDDSNutVal", ["Food code"], :name => "Food code"
  add_index "test_prefixFNDDSNutVal", ["Nutrient code"], :name => "Nutrient code"
  add_index "test_prefixFNDDSNutVal", ["Start date"], :name => "Start date"

  create_table "test_prefixFNDDSRecCount", :primary_key => "Full File Name", :force => true do |t|
    t.integer "no_of_records", :default => 0
  end

  create_table "test_prefixFNDDSSRLinks", :id => false, :force => true do |t|
    t.integer  "Food code",                               :null => false
    t.datetime "Start date",                              :null => false
    t.datetime "End date",                                :null => false
    t.integer  "Seq num",                                 :null => false
    t.integer  "SR code"
    t.string   "SR description",           :limit => 240
    t.float    "Amount"
    t.string   "Measure",                  :limit => 3
    t.integer  "Portion code"
    t.integer  "Retention code"
    t.integer  "Flag"
    t.float    "Weight"
    t.string   "Change type to SR Code",   :limit => 1
    t.string   "Change type to weight",    :limit => 1
    t.string   "Change type to retn code", :limit => 1
  end

  add_index "test_prefixFNDDSSRLinks", ["End date"], :name => "End date"
  add_index "test_prefixFNDDSSRLinks", ["Food code"], :name => "Food code"
  add_index "test_prefixFNDDSSRLinks", ["Seq num"], :name => "Seq num"
  add_index "test_prefixFNDDSSRLinks", ["Start date"], :name => "Start date"

  create_table "test_prefixFoodPortionDesc", :id => false, :force => true do |t|
    t.integer  "Portion code",                       :null => false
    t.datetime "Start date",                         :null => false
    t.datetime "End date"
    t.string   "Portion description", :limit => 120
    t.string   "Change type",         :limit => 1
  end

  add_index "test_prefixFoodPortionDesc", ["Portion code"], :name => "Portion code"
  add_index "test_prefixFoodPortionDesc", ["Start date"], :name => "Start date"

  create_table "test_prefixFoodSubcodeLinks", :id => false, :force => true do |t|
    t.integer  "Food code",  :null => false
    t.integer  "Subcode",    :null => false
    t.datetime "Start date"
    t.datetime "End date"
  end

  add_index "test_prefixFoodSubcodeLinks", ["Food code"], :name => "Food code"
  add_index "test_prefixFoodSubcodeLinks", ["Subcode"], :name => "Subcode"

  create_table "test_prefixFoodWeights", :id => false, :force => true do |t|
    t.integer  "Food code",                   :null => false
    t.integer  "Subcode",                     :null => false
    t.integer  "Seq num",                     :null => false
    t.integer  "Portion code",                :null => false
    t.datetime "Start date",                  :null => false
    t.datetime "End date"
    t.float    "Portion weight"
    t.string   "Change type",    :limit => 1
  end

  add_index "test_prefixFoodWeights", ["Food code"], :name => "Food code"
  add_index "test_prefixFoodWeights", ["Portion code"], :name => "Portion code"
  add_index "test_prefixFoodWeights", ["Seq num"], :name => "Seq num"
  add_index "test_prefixFoodWeights", ["Start date"], :name => "Start date"
  add_index "test_prefixFoodWeights", ["Subcode"], :name => "Subcode"

  create_table "test_prefixMainFoodDesc", :primary_key => "Food code", :force => true do |t|
    t.datetime "Start date"
    t.datetime "End date"
    t.string   "Main food description", :limit => 200
  end

  create_table "test_prefixModDesc", :primary_key => "Modification code", :force => true do |t|
    t.datetime "Start date"
    t.datetime "End date"
    t.text     "Modification description", :limit => 2147483647
    t.integer  "Food code"
  end

  add_index "test_prefixModDesc", ["Food code"], :name => "Food code"
  add_index "test_prefixModDesc", ["Modification code"], :name => "Modification code"

  create_table "test_prefixModNutVal", :id => false, :force => true do |t|
    t.integer  "Modification code", :default => 0, :null => false
    t.integer  "Nutrient code",                    :null => false
    t.datetime "Start date",                       :null => false
    t.datetime "End date"
    t.float    "Nutrient value"
  end

  add_index "test_prefixModNutVal", ["Modification code"], :name => "Modification code"
  add_index "test_prefixModNutVal", ["Nutrient code"], :name => "Nutrient code"
  add_index "test_prefixModNutVal", ["Start date"], :name => "Start date"

  create_table "test_prefixMoistNFatAdjust", :id => false, :force => true do |t|
    t.integer  "Food code",       :null => false
    t.datetime "Start date",      :null => false
    t.datetime "End date"
    t.float    "Moisture change"
    t.float    "Fat change"
    t.float    "Type of fat"
  end

  add_index "test_prefixMoistNFatAdjust", ["Food code"], :name => "Food code"
  add_index "test_prefixMoistNFatAdjust", ["Start date"], :name => "Start date"

  create_table "test_prefixNutDesc", :primary_key => "Nutrient code", :force => true do |t|
    t.string  "Nutrient description", :limit => 45
    t.string  "Tagname",              :limit => 15
    t.string  "Unit",                 :limit => 10
    t.integer "Decimals"
  end

  create_table "test_prefixSubcodeDesc", :id => false, :force => true do |t|
    t.integer  "Subcode",                           :null => false
    t.datetime "Start date",                        :null => false
    t.datetime "End date"
    t.string   "Subcode description", :limit => 60
  end

  add_index "test_prefixSubcodeDesc", ["Start date"], :name => "Start date"
  add_index "test_prefixSubcodeDesc", ["Subcode"], :name => "Subcode"

  create_table "users", :force => true do |t|
    t.integer  "age"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

=======
>>>>>>> brady/master
end
