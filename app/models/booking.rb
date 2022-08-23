class Booking < ApplicationRecord
  belongs_to :jewel
  belongs_to :user

  validates :starting_date, :ending_date, presence: true
  validates_comparison_of :ending_date, greater_than: :starting_date
end
