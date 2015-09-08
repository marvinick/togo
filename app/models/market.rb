class Market < ActiveRecord::Base
  belongs_to :food
  belongs_to :location

end