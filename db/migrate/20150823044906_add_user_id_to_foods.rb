class AddUserIdToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :user_id, :integer
  end
end
