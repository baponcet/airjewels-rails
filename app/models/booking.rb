class Booking < ApplicationRecord
  belongs_to :jewel
  belongs_to :user
  enum :status, { pending: 0, validated: 1, ongoing: 2, finished: 3, canceled: 4 }
  validates :starting_date, :ending_date, presence: true
  validates_comparison_of :starting_date, greater_than_or_equal_to: Date.today
  validates_comparison_of :ending_date, greater_than: :starting_date
  validates_comparison_of :ending_date, greater_than_or_equal_to: Date.today
end
