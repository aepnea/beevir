class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :nombre2
      t.string :apellido1
      t.string :apellido2
      t.string :rut
      t.string :cargo
      t.date :fecha_ingreso
      t.binary :foto
      t.integer :comunidad_id

      t.timestamps
    end
  end
end
