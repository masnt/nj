class CategoryItem < ApplicationRecord
	has_many :cart_histories
	belongs_to :category
	# belongs_to :product
	# belongs_to :category
end
