class CategoryItem < ApplicationRecord
	has_many :cart_histories
	belongs_to :category
end
