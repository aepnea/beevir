class CreateTipoUnidades < ActiveRecord::Migration
  def change
    create_table :tipo_unidades do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
