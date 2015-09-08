class Food < ActiveRecord::Base

  validates_presence_of :content
  validates_presence_of :name

  belongs_to :user

  has_many :reviews

  has_many :food_categories
  has_many :categories, through: :food_categories

  has_many :markets
  has_many :locations, through: :markets

  mount_uploader :image, ImageUploader
end
