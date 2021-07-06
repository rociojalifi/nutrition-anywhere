class Review < ApplicationRecord
  belongs_to :user
  belongs_to :service
  
  validates :rating, presence: true
  validates :content, presence: true
  validates :content, lenght: { minimun: 10}

end
