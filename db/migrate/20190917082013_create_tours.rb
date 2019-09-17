class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.float :price, default: 0.0
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
