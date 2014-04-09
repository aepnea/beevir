json.array!(@regiones) do |region|
  json.extract! region, :id, :nombre, :numero
  json.url region_url(region, format: :json)
end
