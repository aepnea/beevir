class CreateRemuneraciones < ActiveRecord::Migration
  def change
    create_table :remuneraciones do |t|
      t.integer :empleado_id
      t.date :fecha
      t.integer :comunidad_id

      t.timestamps
    end
  end
end
