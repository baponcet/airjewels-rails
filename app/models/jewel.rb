class Jewel < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :category, inclusion: { in: ['Ring', 'Earring', 'Necklace', 'Bracelet', 'Watch'] }
  validates :photos, presence: true

  include PgSearch::Model
    pg_search_scope :search_by_name_brand_category,
  against: [ :name, :brand, :category ],
  using: {
  tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
