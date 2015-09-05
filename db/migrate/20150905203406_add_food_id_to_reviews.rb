class AddFoodIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :food_id, :integer
  end
end
