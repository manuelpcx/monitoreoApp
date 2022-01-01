class AddServicioToBloque < ActiveRecord::Migration[6.0]
  def change
    add_reference :bloques, :servicio, null: false, foreign_key: true
  end
end
