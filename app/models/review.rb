class Review < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :title, presence: true
  validates :body, length: { minimum: 5, maximum: 500 }
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 1..5 }
end
