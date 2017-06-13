class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table "bookings", force: :cascade do |t|
      t.integer  "creative_escape_id"
      t.string   "periodes_id"
      t.integer  "user_id"
      t.datetime "created_at",                     null: false
      t.datetime "updated_at",                     null: false
    end
  end
end
