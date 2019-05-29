class AddBuyStockHistoryToCartItemHistory < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_item_histories, :buy_stock_history, :integer
  end
end
