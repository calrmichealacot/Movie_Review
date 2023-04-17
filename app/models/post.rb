class Post < ApplicationRecord
  validates :title, presence: true
  validates :blurb, presence: true
  validates :date_released, presence: true
  validates :country_of_origin, presence: true
  validates :showing_starts, presence: true
  validates :showing_ends, presence: true

  has_many :comments
end