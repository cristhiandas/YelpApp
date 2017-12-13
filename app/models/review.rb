class Review < ApplicationRecord
  validates :author, presence: true,
                     length: { minimum: 2 }
  validates :rating, presence: true

  belongs_to :restaurant
end
