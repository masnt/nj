class CreateCartHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_histories do |t|
      t.integer :user_id, null: false
      t.integer :cart_item_history_id, null: false
      t.string :family_name_history
      t.string :first_name_history
      t.string :family_name_kana_history
      t.string :first_name_kana_history
      t.string :postal_code_history
      t.string :ship_address_history
      t.integer :howtopay_history
      t.integer :amount_history
      t.string :other_name
      t.string :other_name_kana
      t.string :other_address
      t.string :other_phone_number
      t.integer :ship_status

      t.timestamps
    end
  end
end
