class Picture < ApplicationRecord

	belongs_to :product_image
	attachment :picture_a
end
