class AddReferencesToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :user, null: false, foreign_key: true
    add_reference :bookings, :service, null: false, foreign_key: true
  end
end
