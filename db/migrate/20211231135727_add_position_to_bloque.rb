class AddPositionToBloque < ActiveRecord::Migration[6.0]
  def change
    add_column :bloques, :position, :integer
  end
end
