class Review < ActiveRecord::Base
  validates_presence_of :content
  belongs_to :food
end