class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :phone_number
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
