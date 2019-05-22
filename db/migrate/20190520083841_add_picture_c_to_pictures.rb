class AddPictureCToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :picture_c, :string
  end
end
