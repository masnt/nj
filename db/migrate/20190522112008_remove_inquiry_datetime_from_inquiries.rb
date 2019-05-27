class RemoveInquiryDatetimeFromInquiries < ActiveRecord::Migration[5.2]
  def change
    remove_column :inquiries, :inquiry_datetime, :datetime
  end
end
