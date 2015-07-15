class AddContentToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :content, :text
    add_column :foods, :gluten, :boolean
  end
end
