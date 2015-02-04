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

ActiveRecord::Schema.define(:version => 20150204110543) do

  create_table "file_diffs", :force => true do |t|
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "doc_current_file_name"
    t.string   "doc_current_content_type"
    t.integer  "doc_current_file_size"
    t.datetime "doc_current_updated_at"
    t.string   "doc_origin_file_name"
    t.string   "doc_origin_content_type"
    t.integer  "doc_origin_file_size"
    t.datetime "doc_origin_updated_at"
  end

end
