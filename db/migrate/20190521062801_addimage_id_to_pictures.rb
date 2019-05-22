class AddimageIdToPictures < ActiveRecord::Migration[5.2]
  def change
  	add_column :image_id, :string
  end
end
