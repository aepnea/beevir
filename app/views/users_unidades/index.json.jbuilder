json.array!(@users_unidades) do |user_unidad|
  json.extract! user_unidad, :id, :user_id, :unidad_id
  json.url user_unidad_url(user_unidad, format: :json)
end
