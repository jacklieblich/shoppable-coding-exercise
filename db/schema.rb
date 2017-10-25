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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171024235601) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "current_sessions", force: :cascade do |t|
    t.datetime "created_at",                                                                                                                           null: false
    t.datetime "updated_at",                                                                                                                           null: false
    t.hstore   "inputs",     default: {"a"=>"0", "b"=>"0", "x"=>"0", "y"=>"0", "ArrowUp"=>"0", "ArrowDown"=>"0", "ArrowLeft"=>"0", "ArrowRight"=>"0"}
  end

  create_table "input_sessions", force: :cascade do |t|
    t.string   "most_requested"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
