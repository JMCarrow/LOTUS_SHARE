class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  validates :starts_at, :ends_at, presence:true
end
