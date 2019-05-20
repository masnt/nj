class AddPictureAToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :picture_a, :string
  end
end
