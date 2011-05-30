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

ActiveRecord::Schema.define(:version => 20110526005133) do

  create_table "records", :force => true do |t|
    t.integer  "site_id",          :null => false
    t.string   "photo_file_name"
    t.string   "photo2_file_name"
    t.string   "photo3_file_name"
    t.string   "doc_file_name"
    t.text     "comment"
    t.string   "p6"
    t.string   "p7"
    t.string   "p8"
    t.string   "p9"
    t.string   "p10"
    t.string   "p11"
    t.string   "p12"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "records", ["site_id"], :name => "index_records_on_site_id"

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.string   "photo"
    t.string   "photo2"
    t.string   "photo3"
    t.string   "doc"
    t.string   "comment"
    t.string   "p6"
    t.string   "p7"
    t.string   "p8"
    t.string   "p9"
    t.string   "p10"
    t.string   "p11"
    t.string   "p12"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
