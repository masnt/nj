class Category < ApplicationRecord
	attachment :category_image
	has_many :category_items
end
