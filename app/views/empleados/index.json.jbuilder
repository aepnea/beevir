json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombre, :nombre2, :apellido1, :apellido2, :rut, :cargo, :fecha_ingreso, :foto, :comunidad_id
  json.url empleado_url(empleado, format: :json)
end
