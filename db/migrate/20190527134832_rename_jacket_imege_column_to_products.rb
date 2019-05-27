class RenameJacketImegeColumnToProducts < ActiveRecord::Migration[5.2]
  def change
  	rename_column :produts, :jacket_image, :jacket_image_id
  end
end


