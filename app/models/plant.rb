class Plant < ApplicationRecord
  belongs_to :user
  
  geocoded_by :address
  has_one_attached :photo

  has_many :reservations, dependent: :destroy

  validates :name, :environment, :size, presence: true
  validates :photo, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
