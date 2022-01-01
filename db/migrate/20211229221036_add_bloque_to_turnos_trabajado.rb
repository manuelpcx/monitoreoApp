class AddBloqueToTurnosTrabajado < ActiveRecord::Migration[6.0]
  def change
    add_reference :turnos_trabajados, :bloque, null: false, foreign_key: true
  end
end
