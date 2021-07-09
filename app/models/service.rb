class Service < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_speciality_and_price,
    against: [ :speciality, :price ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
