class Picture < ApplicationRecord

	belongs_to :product
	attachment :image

end
