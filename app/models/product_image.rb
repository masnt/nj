class ProductImage < ApplicationRecord
<<<<<<< HEAD
	belongs_to :product
	has_many :pictures

end
=======

	belongs_to :product
	has_many :pictures
	attachment :picture
end
>>>>>>> 88e39857eae570029b15457b5c028221703bc71b
