json.array!(@unidades) do |unidad|
  json.extract! unidad, :id, :numero, :mt2, :busy, :sector_id, :comunidad_id
  json.url unidad_url(unidad, format: :json)
end
