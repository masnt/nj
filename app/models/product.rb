class Product < ApplicationRecord


    has_many :cart_item_histories
    has_many :cart_items
	has_many :pictures, dependent: :destroy
	has_many :favorites
	has_many :users, through: :favorites
    attachment :jacket_image
    has_many :category_items
    accepts_attachments_for :pictures, attachment: :image

    enum product_status:[:販売中, :販売停止中]
    enum category_id:[:JPOP, :ROCK, :POP, :HIPHOP]

    def favorited_by?(user)
          favorites.where(user_id: user.id).exists?
    end



end
