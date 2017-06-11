class CreativeEscape < ApplicationRecord
  has_many :escape_photos
  geocoded_by :address
  after_validation :geocode, if: address_changed?
end
