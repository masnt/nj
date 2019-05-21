class Product < ApplicationRecord

	has_many :pictures, dependent: :destroy
    attachment :jacket_image

end
