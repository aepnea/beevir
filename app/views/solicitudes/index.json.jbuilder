json.array!(@solicitudes) do |solicitud|
  json.extract! solicitud, :id, :titulo, :descripcion, :adjunto, :comunidad_id, :unidad_id, :estado_id, :role_id
  json.url solicitud_url(solicitud, format: :json)
end
