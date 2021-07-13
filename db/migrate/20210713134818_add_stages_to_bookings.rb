class AddStagesToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :stage, :string
  end
end
