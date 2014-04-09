json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :razon_social, :nombre, :rut, :direccion, :email, :telefono, :nombre_contacto, :region_id
  json.url cliente_url(cliente, format: :json)
end
