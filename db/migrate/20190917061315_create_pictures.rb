class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.text :picture_link
      t.references :picturetable, polymorphic: true

      t.timestamps
    end
  end
end
