class AddFoodIdAndRecipeIdToRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :recipe_foods, :food_id, :bigint unless column_exists?(:recipe_foods, :food_id)
    add_column :recipe_foods, :recipe_id, :bigint unless column_exists?(:recipe_foods, :recipe_id)

    add_index :recipe_foods, :food_id unless index_exists?(:recipe_foods, :food_id)
    add_index :recipe_foods, :recipe_id unless index_exists?(:recipe_foods, :recipe_id)
  end
end

