class Product < ApplicationRecord


    has_many :cart_item_histories
    has_many :cart_items
	has_many :pictures, dependent: :destroy
	has_many :favorites
	has_many :users, through: :favorites
    has_many :product_reviews
    attachment :jacket_image
    accepts_attachments_for :pictures, attachment: :image

    enum product_status:[:販売中, :販売停止中]

    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end



end
