class Product < ApplicationRecord
 has_many :product_images, dependent: :destroy
  accepts_attachments_for :product_images, attachment: :picture


end
