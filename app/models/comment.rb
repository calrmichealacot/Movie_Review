class Comment < ApplicationRecord
  belongs_to :post
  validates :blurb, presence: true
end
