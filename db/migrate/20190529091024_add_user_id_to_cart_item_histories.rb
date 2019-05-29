class AddUserIdToCartItemHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_item_histories, :user_id, :integer
  end
end
