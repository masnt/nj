class CartItemHistory < ApplicationRecord
belongs_to :cart_history
belongs_to :user

belongs_to :product

end
