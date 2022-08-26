class Jewel < ApplicationRecord
  belongs_to :user
  has_many_attached :photos, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :price_per_day, :category, :brand, presence: true
  validates :category, inclusion: { in: ['Ring', 'Earring', 'Necklace', 'Bracelet', 'Watch'] }
  validates :photos, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_brand_category, against: %i[name brand category comment], using: {
    tsearch: { prefix: true }
  }
  pg_search_scope :search_btn, against: :category, using: {
    tsearch: { prefix: true }
  }
end
