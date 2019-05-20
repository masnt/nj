class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :artist
      t.integer :stock_quantity
      t.integer :recieve_quantity
      t.text :product_text
      t.integer :product_status
      t.integer :unit_price

      t.timestamps
    end
  end
end
