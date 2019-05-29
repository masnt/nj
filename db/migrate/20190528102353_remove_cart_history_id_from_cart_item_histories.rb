class RemoveCartHistoryIdFromCartItemHistories < ActiveRecord::Migration[5.2]
  def up
  	remove_column :cart_item_histories, :cart_history_id
  end

  def down
   add_column :cart_item_histories, :cart_history_id, :integer, null: false
  end
end
