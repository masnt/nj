class ProductReview < ApplicationRecord
	enum rate: { nothing:0, ☆:1, ☆☆:2, ☆☆☆:3, ☆☆☆☆:4, ☆☆☆☆☆:5 }
	validates :review_title, presence: true  #,length: {maximum:255}
	validates :review_text, presence: true
end
