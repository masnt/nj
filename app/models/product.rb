class Product < ApplicationRecord


    has_many :cart_item_histories
    has_many :cart_items
	has_many :pictures, dependent: :destroy
	has_many :favorites
	has_many :users, through: :favorites
    has_many :product_reviews
    has_many :category_items
    attachment :jacket_image
    accepts_attachments_for :pictures, attachment: :image

    enum product_status:[:販売中, :販売停止中]
    #enum category_id:[:JPOP,:HIPHOP,:ROCK,:PIANO,:COUNTRY,:CLASSIC,:BLUES,:POP,:BGM,:HAPPY,:RAP,:TREND]

    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end



end
