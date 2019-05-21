class AddJacketImageIdToProductImages < ActiveRecord::Migration[5.2]
  def change
    add_column :product_images, :jacket_image_id, :string
  end
end
