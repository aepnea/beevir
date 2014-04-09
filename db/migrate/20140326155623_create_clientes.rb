class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :razon_social
      t.string :nombre
      t.string :rut
      t.string :direccion
      t.string :email
      t.string :telefono
      t.string :nombre_contacto
      t.integer :region_id

      t.timestamps
    end
  end
end
