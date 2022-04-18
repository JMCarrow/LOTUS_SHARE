class Review < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  validates :rating, presence:true
end
