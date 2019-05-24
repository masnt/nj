class AddImageIdToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :image_id, :string
  end
end
