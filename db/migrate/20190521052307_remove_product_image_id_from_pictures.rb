class RemoveProductImageIdFromPictures < ActiveRecord::Migration[5.2]
  def change
    remove_column :pictures, :product_image_id, :integer
  end
end
