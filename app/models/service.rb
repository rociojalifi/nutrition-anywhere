class Service < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  
  belongs_to :user
  has_many :reviews
  has_many :bookings
end
