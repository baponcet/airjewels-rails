class Jewel < ApplicationRecord
  belongs_to :user
  has_many_attached :photo
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :category, acceptance: { accept: ['Ring', 'Earring', 'Necklace', 'Bracelet', 'Watch'] }
  validates :photo, presence: true
  has_one_attached :photo
end
