class RemovePayTypeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :pay_type, :string
    remove_column :users, :integer
  end
end
