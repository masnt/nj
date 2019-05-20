class CreateProductImages < ActiveRecord::Migration[5.2]
  def change
    create_table :product_images do |t|
    t.integer :product_id
    t.string :picture_id
    t.string :jacket_image

    t.timestamps
  end
end
end
