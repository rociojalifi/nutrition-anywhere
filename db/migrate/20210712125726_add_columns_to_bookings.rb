class AddColumnsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :meeting_url, :string
    add_column :bookings, :meeting_metadata, :string
  end
end
