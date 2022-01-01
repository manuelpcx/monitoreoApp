class Bloque < ApplicationRecord
    has_many :turnos_trabajados, dependent: :destroy
end
