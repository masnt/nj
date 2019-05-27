class CartHistory < ApplicationRecord

belongs_to :user

belongs_to :cart_item_history


end
