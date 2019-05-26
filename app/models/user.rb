class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    belongs_to :user
    has_many :cart_items
    has_many :cart_histories
    has_many :favorites
    has_many :fav_products,through: :favorites, source: :product


# =========== ↓サインアップの際のバリデーション↓　==================
	validates :first_name, :family_name, :first_name_kana, :family_name_kana, presence: true, length: { in: 1..20 }
	validates :postal_code, presence: true, length: { in: 8..8 }
	validates :address, presence: true, length: { in: 4..30 }
	validates :phone_number, presence: true, length: { in: 12..13 }
	validates :email, presence: true, length: { in: 6..30 }

end
