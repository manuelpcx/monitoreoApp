class CreateBloques < ActiveRecord::Migration[6.0]
  def change
    create_table :bloques do |t|

      t.timestamps
    end
  end
end
