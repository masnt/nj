class RemoveCategoryImageFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :category_image, :string
  end
end
