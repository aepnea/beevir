class CreateSolicitudes < ActiveRecord::Migration
  def change
    create_table :solicitudes do |t|
      t.string :titulo
      t.text :descripcion
      t.binary :adjunto
      t.integer :comunidad_id
      t.integer :unidad_id
      t.integer :estado_id
      t.integer :role_id

      t.timestamps
    end
  end
end
