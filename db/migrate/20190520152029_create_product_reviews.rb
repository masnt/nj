class CreateProductReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :product_reviews do |t|
      t.integer :product_id, null: false
      t.string :review_title, null: false
      t.text :review_text, null: false
      t.integer :rating, null: false

      t.timestamps
    end
  end
end
