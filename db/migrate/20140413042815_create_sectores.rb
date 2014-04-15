class CreateSectores < ActiveRecord::Migration
  def change
    create_table :sectores do |t|
      t.string :nombre
      t.integer :comunidad_id

      t.timestamps
    end
  end
end
