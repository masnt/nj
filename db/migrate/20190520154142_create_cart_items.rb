class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :product_id, null: false
      t.integer :purchase_quantity, null: false
      t.integer :sub_total, null: false

      t.timestamps
    end
  end
end
