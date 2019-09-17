class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.datetime :start_time
      t.float :price, default: 0.0
      t.integer :status, default: 0
      t.string :phone_number
      t.integer :people_number, default: 0
      t.string :address

      t.timestamps
    end
  end
end
