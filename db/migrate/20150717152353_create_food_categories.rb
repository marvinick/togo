class CreateFoodCategories < ActiveRecord::Migration
  def change
    create_table :food_categories do |t|
      t.integer :food_id, :category_id
      t.timestamps
    end
  end
end
