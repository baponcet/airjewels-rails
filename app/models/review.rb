class Review < ApplicationRecord
  belongs_to :jewel
  belongs_to :user
  validates :content, length: { minimum: 10 }
  validates :content, :rating, presence: true
  validates :rating, numericality: { in: 1..5 }
end
