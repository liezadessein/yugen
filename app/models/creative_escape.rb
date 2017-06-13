class CreativeEscape < ApplicationRecord
  has_many :escape_photos
  geocoded_by :full_address
  after_validation :geocode
  monetize :price_cents
  def full_address
    "#{streetnumber} #{address} #{city} #{postcode} #{country}"
  end
end
