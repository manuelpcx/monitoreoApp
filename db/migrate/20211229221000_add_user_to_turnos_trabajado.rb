class AddUserToTurnosTrabajado < ActiveRecord::Migration[6.0]
  def change
    add_reference :turnos_trabajados, :user, null: false, foreign_key: true
  end
end
