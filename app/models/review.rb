class Review < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :service, dependent: :destroy
  
  validates :rating, presence: true
  validates :content, presence: true
  validates :content, length: { minimum: 10}

end
