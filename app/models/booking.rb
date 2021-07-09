class Booking < ApplicationRecord
 belongs_to :user, dependent: :destroy
 belongs_to :service, dependent: :destroy

 validates :booking_date, presence: true
end
