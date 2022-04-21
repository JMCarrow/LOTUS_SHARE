class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  validates :starts_at, :ends_at, presence: true

  def full_price
    if take_care
      price = (((Date.parse(ends_at) - Date.parse(starts_at)).to_i + 1) * plant.rent_price) * 1.1
    else
      price = ((Date.parse(ends_at) - Date.parse(starts_at)).to_i + 1) * plant.rent_price
    end
    price.round(1)
  end
end
