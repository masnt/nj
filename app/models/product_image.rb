class ProductImage < ApplicationRecord

	belongs_to :product
	has_many :pictures
	attachment :picture
end