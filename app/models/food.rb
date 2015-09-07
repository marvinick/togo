class Food < ActiveRecord::Base

  validates_presence_of :content
  validates_presence_of :name

  belongs_to :user
  belongs_to :location


  has_many :reviews
  has_many :food_categories
  has_many :categories, through: :food_categories

  mount_uploader :image, ImageUploader
end
