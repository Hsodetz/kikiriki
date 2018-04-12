json.extract! colegio, :id, :nombre, :direccion, :pais, :created_at, :updated_at
json.url colegio_url(colegio, format: :json)
