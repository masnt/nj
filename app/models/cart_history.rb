class CartHistory < ApplicationRecord
<<<<<<< HEAD
	enum howtopay_history: {銀行口座振込: 0, クレジットカード払い: 1, 代金引換: 2}
    enum shipping_type: {登録住所: 20, 別のお届け先: 30}


	belongs_to :user
	belongs_to :cart_item_history
=======

belongs_to :user

belongs_to :cart_item_history

>>>>>>> 523e4acfd5614be4b998c3b668f6c2b4a6687a6d

end
