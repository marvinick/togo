class Food < ActiveRecord::Base
  validates_presence_of :name
  has_many :food_categories
  has_many :categories, through: :food_categories

  has_attached_file :image
  has_attached_file :resource
end
