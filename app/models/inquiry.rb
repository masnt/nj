class Inquiry < ApplicationRecord
	# enum inquiry_status: { :0, 対応中:1, 未対応:2 }
	validates :inquiry_title, presence: true
	validates :inquiry_text, presence: true
end
