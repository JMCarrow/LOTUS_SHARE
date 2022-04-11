class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :plant

    validates :address, :date, presence: true

end
