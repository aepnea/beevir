class CreateEspaciosComunes < ActiveRecord::Migration
  def change
    create_table :espacios_comunes do |t|
      t.string :espacio_comun
      t.text :descripcion
      t.text :reglamento
      t.decimal :precio
      t.binary :foto
      t.integer :comunidad_id

      t.timestamps
    end
  end
end
