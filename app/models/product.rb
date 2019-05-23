class Product < ApplicationRecord
	has_many :pictures, dependent: :destroy
    attachment :jacket_image
    accepts_attachments_for :pictures, attachment: :image

    enum product_status:[:販売中, :販売停止中]

end
