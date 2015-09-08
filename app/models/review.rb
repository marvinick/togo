class Review < ActiveRecord::Base
  validates_presence_of :content
  belongs_to :food
  belongs_to :user
end