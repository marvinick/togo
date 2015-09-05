class Food < ActiveRecord::Base

  belongs_to :user

  validates_presence_of :content
  validates_presence_of :name

  has_many :reviews
  has_many :food_categories
  has_many :categories, through: :food_categories

  mount_uploader :image, ImageUploader
end
