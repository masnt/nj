class CreateShopinfomations < ActiveRecord::Migration[5.2]
  def change
    create_table :shopinfomations do |t|
      t.text :shopinfomation_text, null: false
      t.string :shopinfomation_image, null: false

      t.timestamps
    end
  end
end
