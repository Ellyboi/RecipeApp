class AddUserIdToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :user_id, :bigint unless column_exists?(:recipes, :user_id)
    add_index :recipes, :user_id unless index_exists?(:recipes, :user_id)
  end
end
