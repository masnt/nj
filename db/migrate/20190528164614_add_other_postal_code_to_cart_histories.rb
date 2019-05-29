class AddOtherPostalCodeToCartHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_histories, :other_postal_code, :string
  end
end
