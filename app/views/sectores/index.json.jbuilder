json.array!(@sectores) do |sector|
  json.extract! sector, :id, :nombre, :comunidad_id
  json.url sector_url(sector, format: :json)
end
