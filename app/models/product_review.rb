class ProductReview < ApplicationRecord
	enum rate: { nothing:0, ☆:1, ☆☆:2, ☆☆☆:3, ☆☆☆☆:4, ☆☆☆☆☆:5 }
end
