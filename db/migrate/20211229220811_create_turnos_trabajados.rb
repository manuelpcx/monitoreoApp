class CreateTurnosTrabajados < ActiveRecord::Migration[6.0]
  def change
    create_table :turnos_trabajados do |t|
      t.string :dia
      t.string :semana

      t.timestamps
    end
  end
end
