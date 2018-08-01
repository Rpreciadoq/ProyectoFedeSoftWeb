class Donation < ApplicationRecord
    validates :cuenta, presence: true, uniqueness:true, length: {minimum: 6}
    validates :banco, presence: true, length: {maximum: 60}
    validates :detalle, presence: true

end
