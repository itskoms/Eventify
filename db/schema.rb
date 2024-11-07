# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_11_03_232626) do
  create_table "budget_transactions", force: :cascade do |t|
    t.string "name"
    t.integer "event_id", null: false
    t.string "description"
    t.decimal "amount"
    t.integer "budget_id", null: false
    t.string "transaction_type"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date"
    t.index ["budget_id"], name: "index_budget_transactions_on_budget_id"
    t.index ["event_id"], name: "index_budget_transactions_on_event_id"
  end

  create_table "budgets", force: :cascade do |t|
    t.decimal "total_budget"
    t.text "description"
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_budgets_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "date"
    t.string "location"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_time"
    t.datetime "end_time"
  end

  create_table "gift_registries", force: :cascade do |t|
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_gift_registries_on_event_id"
  end

  create_table "gifts", force: :cascade do |t|
    t.string "item_name"
    t.decimal "price"
    t.string "link"
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gift_registry_id", null: false
    t.boolean "purchased", default: false
    t.integer "guest_id", null: false
    t.index ["event_id"], name: "index_gifts_on_event_id"
    t.index ["gift_registry_id"], name: "index_gifts_on_gift_registry_id"
    t.index ["guest_id"], name: "index_gifts_on_guest_id"
  end

  create_table "guest_lists", force: :cascade do |t|
    t.integer "guest_id", null: false
    t.integer "event_id", null: false
    t.string "rsvp_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_guest_lists_on_event_id"
    t.index ["guest_id"], name: "index_guest_lists_on_guest_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "first_name"
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.integer "party_size", null: false
    t.string "phone"
    t.string "email"
    t.index ["event_id"], name: "index_guests_on_event_id"
  end

  create_table "itineraries", force: :cascade do |t|
    t.text "description"
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "date"
    t.index ["event_id"], name: "index_itineraries_on_event_id"
  end

  create_table "itinerary_actions", force: :cascade do |t|
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.string "name"
    t.string "description"
    t.integer "itinerary_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["itinerary_id"], name: "index_itinerary_actions_on_itinerary_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.text "message"
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_notifications_on_event_id"
  end

  add_foreign_key "budget_transactions", "budgets"
  add_foreign_key "budget_transactions", "events"
  add_foreign_key "budgets", "events"
  add_foreign_key "gift_registries", "events"
  add_foreign_key "gifts", "events"
  add_foreign_key "gifts", "gift_registries"
  add_foreign_key "gifts", "guests"
  add_foreign_key "guest_lists", "events"
  add_foreign_key "guest_lists", "guests"
  add_foreign_key "guests", "events"
  add_foreign_key "itineraries", "events"
  add_foreign_key "itinerary_actions", "itineraries"
  add_foreign_key "notifications", "events"
end
