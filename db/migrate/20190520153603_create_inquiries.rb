class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.datetime :inquiry_datetime, null: false
      t.string :inquiry_title, null: false
      t.text :inquiry_text, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
