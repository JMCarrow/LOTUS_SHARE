class Plant < ApplicationRecord
  belongs_to :user

  has_many :reservations, dependent: :destroy

  validates :name, :environment, :size, presence: true
end
