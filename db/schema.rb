# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20120912164138) do

  create_table "_posts_old_20120911", :force => true do |t|
    t.string   "title"
    t.string   "desc"
    t.integer  "user_id"
    t.string   "thum"
    t.string   "body"
    t.boolean  "isbanner"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "attris", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pa_ships", :id => false, :force => true do |t|
    t.integer  "product_id"
    t.integer  "attri_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "desc"
    t.integer  "user_id"
    t.string   "thum"
    t.text     "body",       :limit => 255
    t.boolean  "isbanner"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "posts", ["user_id"], :name => "index_posts_on_user_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "ptype"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.string   "slug"
    t.boolean  "girl"
    t.text     "body"
    t.string   "website"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "proitems", :force => true do |t|
    t.integer  "product_id"
    t.string   "someline"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "cart_id"
  end

  add_index "proitems", ["product_id"], :name => "index_proitems_on_product_id"

  create_table "properties", :force => true do |t|
    t.integer  "attri_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "pdesc"
  end

  add_index "properties", ["attri_id"], :name => "index_properties_on_attri_id"

  create_table "users", :force => true do |t|
    t.string   "username",               :default => "", :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
