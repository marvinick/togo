class Location < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  has_many :users
  has_many :foods

  has_many :markets
  has_many :foods, through: :markets
end
