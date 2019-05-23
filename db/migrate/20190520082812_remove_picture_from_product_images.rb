class RemovePictureFromProductImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :product_images, :picture, :string
  end
end
