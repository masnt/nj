class RemoveLabelIdFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :label_id, :string
  end
end
