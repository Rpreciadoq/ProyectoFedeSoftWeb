class Foundation < ApplicationRecord
    validates :nombre, presence: true, uniqueness:true, length: {minimum: 10}
    validates :resumen, presence: true, length: {maximum: 60}
    validates :objeto, presence: true
    validates :telefono, presence: true, length: {minimum: 7}
    validates :sitio_web, presence: true, length: {maximum: 60}

end
