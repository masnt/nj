class Product < ApplicationRecord

	has_many :pictures, dependent: :destroy
    attachment :jacket_image
    accepts_attachments_for :pictures, attachment: :image

end
