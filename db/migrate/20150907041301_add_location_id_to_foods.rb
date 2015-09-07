class AddLocationIdToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :location_id, :integer
  end
end
