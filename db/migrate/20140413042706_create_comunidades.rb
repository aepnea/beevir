class CreateComunidades < ActiveRecord::Migration
  def change
    create_table :comunidades do |t|
      t.string :nombre
      t.string :direccion
      t.string :ciudad
      t.integer :region_id
      t.integer :tipo_unidad_id
      t.integer :user_id
      t.integer :cliente_id

      t.timestamps
    end
  end
end
