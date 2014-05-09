class AddRutToComunidades < ActiveRecord::Migration
  def change
    add_column :comunidades, :rut, :string
  end
end
