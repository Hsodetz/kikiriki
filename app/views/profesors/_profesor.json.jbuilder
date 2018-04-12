json.extract! profesor, :id, :nombres, :apellidos, :telefono, :correo, :created_at, :updated_at
json.url profesor_url(profesor, format: :json)
