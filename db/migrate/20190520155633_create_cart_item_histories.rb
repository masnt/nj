class CreateCartItemHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_item_histories do |t|
      t.integer :cart_history_id, null: false
      t.integer :product_id, null: false
      t.integer :unit_price, nul: false
      t.integer :sub_total, null: false

      t.timestamps
    end
  end
end
