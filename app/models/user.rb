class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :services, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :role, presence: true

  def nutritionist?
    role == "Nutritionist"
  end

  def patient?
    role == "Patient"
  end

  def save_zoom_token(credentials)
    self.zoom_token = credentials.token
    self.save
  end
end
