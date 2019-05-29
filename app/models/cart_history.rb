class CartHistory < ApplicationRecord

	enum howtopay_history: {銀行口座振込: 0, クレジットカード払い: 1, 代金引換: 2}
    enum shipping_type: {登録住所: 0, 別のお届け先: 1}
    enum ship_status: { 準備中: 0, 発送: 1}

	belongs_to :user
	has_many :orders
	has_many :cart_item_histories


end
