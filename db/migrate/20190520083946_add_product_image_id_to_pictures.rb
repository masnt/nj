class AddProductImageIdToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :product_image_id, :string
  end
end
