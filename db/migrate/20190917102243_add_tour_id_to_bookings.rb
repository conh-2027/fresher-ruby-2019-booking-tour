class AddTourIdToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :tour_id, :integer
  end
end
