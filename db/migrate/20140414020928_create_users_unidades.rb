class CreateUsersUnidades < ActiveRecord::Migration
  def change
    create_table :users_unidades do |t|
      t.integer :user_id
      t.integer :unidad_id

      t.timestamps
    end
  end
end
