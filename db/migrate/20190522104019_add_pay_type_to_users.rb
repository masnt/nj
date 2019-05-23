class AddPayTypeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pay_type, :integer
  end
end
