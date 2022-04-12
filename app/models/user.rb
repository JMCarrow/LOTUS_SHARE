class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates :address, presence: true

  has_many :reviews, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :plants
  # has_one_attached :photo
end
