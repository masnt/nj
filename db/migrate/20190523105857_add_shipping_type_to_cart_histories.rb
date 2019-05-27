class AddShippingTypeToCartHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_histories, :shipping_type, :integer
  end
end
