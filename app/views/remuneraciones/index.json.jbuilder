json.array!(@remuneraciones) do |remuneracion|
  json.extract! remuneracion, :id, :empleado_id, :fecha, :comunidad_id
  json.url remuneracion_url(remuneracion, format: :json)
end
