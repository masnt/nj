class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :category_title, null: false
      t.string :category_image, null: false

      t.timestamps
    end
  end
end
