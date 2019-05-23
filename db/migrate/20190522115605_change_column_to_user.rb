class ChangeColumnToUser < ActiveRecord::Migration[5.2]
  def up
  	 change_column :users, :admin, :boolean, null: false, default: false
  end

  def up
  	 change_column :users, :user_delete, :boolean, null: false, default: false
  end
end