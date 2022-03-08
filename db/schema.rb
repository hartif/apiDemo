# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_08_130807) do

  create_table "reservations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "code"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "nights"
    t.integer "guests"
    t.integer "adults"
    t.integer "childrens"
    t.integer "infants"
    t.boolean "status"
    t.string "guest_first_name"
    t.string "guest_last_name"
    t.string "guest_phone_number"
    t.string "guest_email"
    t.string "currency"
    t.integer "payout_price"
    t.integer "security_price"
    t.integer "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
