class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.integer :numero
      t.integer :mt2
      t.boolean :busy
      t.integer :sector_id
      t.integer :comunidad_id

      t.timestamps
    end
  end
end
