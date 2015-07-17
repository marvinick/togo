class Category < ActiveRecord::Base
  validates_presence_of :name
  has_many :food_categories
  has_many :categories, through: :food_categories
end