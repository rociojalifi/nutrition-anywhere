class Booking < ApplicationRecord
 belongs_to :user
 belongs_to :service

 validates :booking_date, presence: true

  def save_meeting(url, meta)
    self.meeting_url = url
    self.meeting_metadata = meta
    self.save
  end

end
