class CreateShopinformations < ActiveRecord::Migration[5.2]
  def change
    create_table :shopinformations do |t|
    t.text "shopinfomation_text", null: false
    t.string "shopinfomation_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

      t.timestamps
    end
  end
end
