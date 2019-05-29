class RemoveCartItemHistoryIdFromCartHistories < ActiveRecord::Migration[5.2]
  def up
  	remove_column :cart_histories, :cart_item_history_id
  end

  def down
   add_column :cart_histories, :cart_item_history_id, :integer, null: false
  end
end
