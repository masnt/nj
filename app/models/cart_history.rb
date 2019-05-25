class CartHistory < ApplicationRecord
	enum howtopay_history: {銀行口座振込: 0, クレジットカード払い: 1, 代金引換: 2}
    enum shipping_type: {登録住所: 20, 別のお届け先: 30}


	belongs_to :user
	belongs_to :cart_item_history

end
