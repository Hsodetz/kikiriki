json.extract! observacion, :id, :asunto, :mensajes, :profesor_id, :padre_id, :created_at, :updated_at
json.url observacion_url(observacion, format: :json)
