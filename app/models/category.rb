class Category < ActiveRecord::Base
  validates_presence_of :name
  has_many :food_categories
  has_many :foods, through: :food_categories

  mount_uploader :photo, PhotoUploader
end