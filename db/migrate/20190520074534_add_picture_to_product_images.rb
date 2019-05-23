class AddPictureToProductImages < ActiveRecord::Migration[5.2]
  def change
    add_column :product_images, :picture, :string
  end
end
