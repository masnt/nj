class Product < ApplicationRecord

has_many :cart_item_histories


	has_many :pictures, dependent: :destroy
    attachment :jacket_image


end
