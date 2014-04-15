json.array!(@tipo_unidades) do |tipo_unidad|
  json.extract! tipo_unidad, :id, :nombre
  json.url tipo_unidad_url(tipo_unidad, format: :json)
end
