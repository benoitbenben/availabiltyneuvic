class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references  :user
      t.references  :house
      t.date     :start_on
      t.date     :end_on
      t.string "status", default: "pending"

      t.timestamps
    end
  end
end
