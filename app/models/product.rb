class Product < ApplicationRecord

<<<<<<< HEAD

    has_many :cart_item_histories
=======
has_many :cart_item_histories


>>>>>>> 523e4acfd5614be4b998c3b668f6c2b4a6687a6d
	has_many :pictures, dependent: :destroy
    attachment :jacket_image
    accepts_attachments_for :pictures, attachment: :image

    enum product_status:[:販売中, :販売停止中]



end
