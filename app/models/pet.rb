class Pet < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :pet_type, presence: true
  validates :description, length: { minimum: 5, maximum: 500 }
end
