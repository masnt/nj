class AddSelectQuantityToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :select_stock, :integer
  end
end
