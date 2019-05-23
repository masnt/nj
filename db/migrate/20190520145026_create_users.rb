class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :family_name, null: false
      t.string :first_name, null: false
      t.string :family_name_kana, null: false
      t.string :first_name_kana, null: false
      t.string :postal_code, null: false
      t.string :address, null: false
      t.string :phone_number, null: false
      t.string :mail, null: false
      t.integer :password, null: false
      t.boolean :admin, null: false, default: false 
      t.boolean :user_delete, null: false
      t.integer :amount

      t.timestamps
    end
  end
end
