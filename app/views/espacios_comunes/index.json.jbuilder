json.array!(@espacios_comunes) do |espacio_comun|
  json.extract! espacio_comun, :id, :espacio_comun, :descripcion, :reglamento, :precio, :foto, :comunidad_id
  json.url espacio_comun_url(espacio_comun, format: :json)
end
