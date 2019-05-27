class AddCardNumberToCartHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_histories, :card_number, :integer
  end
end
