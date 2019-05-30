class ProductReview < ApplicationRecord
	#enum rate_status:[:'nothing', :'☆', :'☆☆', :'☆☆☆', :'☆☆☆☆', :'☆☆☆☆☆']
	enum rate: { 評価しない: 0, ☆: 1, ☆☆: 2, ☆☆☆: 3, ☆☆☆☆: 4, ☆☆☆☆☆: 5 }
	#enum status: { nothing: 0, 星: 1, 星星: 2, 星星星: 3, 星星星星: 4, 星星星星星: 5 }
	validates :review_title, presence: true  #,length: {maximum:255}
	validates :review_text, presence: true
	belongs_to :product
end
