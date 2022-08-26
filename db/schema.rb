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

ActiveRecord::Schema[7.0].define(version: 2022_01_12_031233) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "expenses", force: :cascade do |t|
    t.string "name"
    t.string "vendor"
    t.string "qty"
    t.string "cost"
    t.string "unit"
    t.date "date_added"
    t.string "category"
    t.string "description"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flips", force: :cascade do |t|
    t.date "date"
    t.string "address_one"
    t.string "address_two"
    t.string "address_city"
    t.string "address_state"
    t.string "address_county"
    t.string "status"
    t.string "beds"
    t.string "baths"
    t.string "square_foot"
    t.string "overview"
    t.string "feature_one"
    t.string "feature_two"
    t.string "feature_three"
    t.string "home_value"
    t.string "tax_history"
    t.string "price_history"
    t.string "monthly_cost"
    t.string "nearby_schools"
    t.string "legal_protections"
    t.string "home_type"
    t.string "year_built"
    t.string "hoa_string"
    t.string "price_per_square_foot"
    t.string "flooring"
    t.string "heating"
    t.string "cooling"
    t.string "lot_size"
    t.string "lot_features_string"
    t.string "foundation"
    t.string "roof_type"
    t.string "roof_age"
    t.string "water_util"
    t.string "electricity_util"
    t.string "sewer_util"
    t.string "association_name"
    t.string "annual_taxes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imageusers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "amount"
    t.string "category"
    t.string "location"
    t.date "date_added"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.string "workout_name"
    t.string "workout_type"
    t.string "location"
    t.string "time"
    t.string "intensity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "string"
    t.string "day"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
