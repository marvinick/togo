class AddImageToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :image, :string
  end
end
