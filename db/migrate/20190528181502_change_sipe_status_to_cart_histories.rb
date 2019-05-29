class ChangeSipeStatusToCartHistories < ActiveRecord::Migration[5.2]
  def change
  	change_column :cart_histories, :ship_status, :integer, :default => 0
  end
end
