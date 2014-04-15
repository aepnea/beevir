json.array!(@comunidades) do |comunidad|
  json.extract! comunidad, :id, :nombre, :direccion, :ciudad, :region_id, :tipo_unidad_id, :user_id
  json.url comunidad_url(comunidad, format: :json)
end
