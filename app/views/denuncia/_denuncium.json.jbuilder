json.extract! denuncium, :id, :asunto, :texto, :imagen, :archivo, :padre_id, :alumno_id, :gravedad, :created_at, :updated_at
json.url denuncium_url(denuncium, format: :json)
