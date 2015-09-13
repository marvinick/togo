class AddStateToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :state, :string
    add_column :locations, :zipcode, :integer
    add_column :locations, :country, :string
  end
end
