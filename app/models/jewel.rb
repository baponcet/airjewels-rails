class Jewel < ApplicationRecord
  belongs_to :user
  has_many_attached :photo
  has_many :bookings, dependent: :destroy
end
