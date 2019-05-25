class CartItemHistory < ApplicationRecord
has_many :cart_histories

belongs_to :product

end
