class AddCartHistoryIdToCartItemHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_item_histories, :cart_history_id, :integer
  end
end
