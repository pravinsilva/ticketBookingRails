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

ActiveRecord::Schema.define(:version => 20131111140538) do

  create_table "customers", :force => true do |t|
    t.string   "email"
    t.integer  "points",     :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "eventName"
    t.text     "description"
    t.string   "eventType"
    t.string   "image"
    t.string   "language"
    t.float    "rating",      :default => 0.0
    t.string   "certificate"
    t.date     "startDate"
    t.date     "endDate"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "gold_rows", :force => true do |t|
    t.integer  "rowNumber"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "goldrows", :force => true do |t|
    t.string   "rowNumber"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pricing_policies", :force => true do |t|
    t.integer  "eventId"
    t.date     "showDate"
    t.float    "basePrice"
    t.float    "morning"
    t.float    "afternoon"
    t.float    "evening"
    t.float    "weekend"
    t.boolean  "default"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "screen_timings", :force => true do |t|
    t.integer  "screenId"
    t.integer  "showId"
    t.date     "showDate"
    t.datetime "startTime"
    t.datetime "endTime"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "screens", :force => true do |t|
    t.string   "screenName"
    t.integer  "seats",      :default => 150
    t.integer  "goldRows"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "seats", :force => true do |t|
    t.string   "rowNumber"
    t.integer  "seatNumber"
    t.boolean  "status",     :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "shows", :force => true do |t|
    t.integer  "eventId"
    t.date     "showDate"
    t.datetime "startTime"
    t.datetime "endTime"
    t.integer  "screenId"
    t.integer  "availableTickets"
    t.float    "price"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "sitecustomers", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "socialcustomers", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "email"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "tickets", :force => true do |t|
    t.integer  "showId"
    t.integer  "customerId"
    t.float    "price"
    t.integer  "seatNumber"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
