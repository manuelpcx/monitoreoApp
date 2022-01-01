class TurnosTrabajado < ApplicationRecord
    belongs_to :bloque
    belongs_to :user
end
