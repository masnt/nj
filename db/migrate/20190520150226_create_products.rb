class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :category_id, null: false
      t.string :product_name, null: false
      t.string :artist, null: false
      t.integer :stock_quantity, null: false
      t.integer :recieve_quantity
      t.text :product_text
      t.integer :label_id, null: false
      t.integer :product_status, null: false
      t.integer :unit_price, null: false
      t.string :jacket_image_id

      t.timestamps
    end
  end
end
