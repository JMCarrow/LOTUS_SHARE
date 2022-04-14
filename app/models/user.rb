class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true

  has_one_attached :photo
  validates :photo, presence: true

  has_many :reviews, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :plants
end
