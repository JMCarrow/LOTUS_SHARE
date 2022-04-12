class Plant < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user

  validates :name,:description, presence: true
end
