class RemoveJacketImageFromProductImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :product_images, :jacket_image, :text
  end
end
