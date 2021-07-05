class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :location
      t.datetime :booking_date

      t.timestamps
    end
  end
end
