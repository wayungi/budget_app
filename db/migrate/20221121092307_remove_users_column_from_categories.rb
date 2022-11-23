class RemoveUsersColumnFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :users, :string
  end
end
