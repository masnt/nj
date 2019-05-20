class RemovePictureIdFromProductImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :product_images, :picture_id, :string
  end
end
