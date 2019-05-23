class CartHistory < ApplicationRecord
	enum howtopay_history: {銀行口座振込: 0, クレジットカード払い: 1, 代金引換: 2}
end
