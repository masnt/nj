class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :picture_a
      t.string :picture_b
      t.string :picture_c
      t.integer :product_image_id, null: false

      t.timestamps
    end
  end
end
