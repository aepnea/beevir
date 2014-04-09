json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apellido1, :apellido2, :rut, :fono, :email, :password, :role, :cliente_id
  json.url usuario_url(usuario, format: :json)
end
