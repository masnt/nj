class Category < ApplicationRecord
	attachment :category_image
	has_many :category_items
    #enum category_id:[:JPOP,:HIPHOP,:ROCK,:PIANO,:COUNTRY,:CLASSIC,:BLUES,:POP,:BGM,:HAPPY,:RAP,:TREND]
	has_many :products
end
