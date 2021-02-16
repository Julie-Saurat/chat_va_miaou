class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :cat
  has_many :booking_reviews, dependent: :destroy
end
