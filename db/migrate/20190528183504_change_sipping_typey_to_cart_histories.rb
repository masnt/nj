class ChangeSippingTypeyToCartHistories < ActiveRecord::Migration[5.2]
  def change
  	change_column :cart_histories, :shipping_type, :integer, :default => 0
  end
end
