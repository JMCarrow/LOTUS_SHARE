class Review < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  validates :rating, presence: true
  validates_inclusion_of :rating, in: 1..5
end
