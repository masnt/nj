class AddPictureBToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :picture_b, :string
  end
end
