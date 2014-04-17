json.array!(@comunidades_users) do |comunidad_user|
  json.extract! comunidad_user, :id, :comunidad_id, :user_id
  json.url comunidad_user_url(comunidad_user, format: :json)
end
