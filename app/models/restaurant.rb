class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, presence: true,
            length: { minimum: 2 }
  validates :location, presence: true
  validates :min_price, presence: true
  validates :max_price, presence: true
  validates :description, presence: true
  validates :category, presence: true
end
