class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.integer :food_id
      t.integer :location_id
      t.timestamps
    end
  end
end
