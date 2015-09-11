class Location < ActiveRecord::Base
  geocoded_by :address
  geocoded_by :full_address

  after_validation :geocode, :if => :address_changed?

  # the full_address method
  def full_address
    "#{address}, #{zipcode}, #{city}, #{country}"
  end

  has_many :users
  has_many :foods

  has_many :markets
  has_many :foods, through: :markets
end
