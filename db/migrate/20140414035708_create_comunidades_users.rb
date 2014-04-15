class CreateComunidadesUsers < ActiveRecord::Migration
  def change
    create_table :comunidades_users do |t|
      t.integer :comunidad_id
      t.integer :user_id

      t.timestamps
    end
  end
end
