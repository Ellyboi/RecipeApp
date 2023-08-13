class AddUserToFood < ActiveRecord::Migration[7.0]
  def change
    add_reference :foods, :user, foreign_key: true unless column_exists?(:foods, :user_id)
  end
end
