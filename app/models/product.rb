class Product < ApplicationRecord
<<<<<<< HEAD
	has_many :product_image
=======

	has_many :product_images, dependent: :destroy
	accepts_attachments_for :product_images, attachment: :picture
>>>>>>> 88e39857eae570029b15457b5c028221703bc71b
end
