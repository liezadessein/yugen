class CreativeEscape < ApplicationRecord
  has_many :escape_photos, dependent: :destroy
  geocoded_by :full_address
  after_validation :geocode
  monetize :price_cents
  include PgSearch
  pg_search_scope :search_by_description_and_country, against: [:description, :country, :city]

  def full_address
    "#{streetnumber} #{address} #{city} #{postcode} #{country}"
  end

  def previous
    CreativeEscape.where("id < ?", self.id).first
  end

  def next
    CreativeEscape.where("id > ?", self.id).first
  end
end
