class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
    	t.string :image_id
    	t.integer :product_id
      t.timestamps
    end
  end
end
