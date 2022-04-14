class Plant < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  has_many :reservations, dependent: :destroy

  validates :name, :environment, :size, presence: true
  validates :photo, presence: true
end
