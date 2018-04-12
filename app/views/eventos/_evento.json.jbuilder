json.extract! evento, :id, :imagen, :titulo, :detalle, :pais, :fechaEvento, :created_at, :updated_at
json.url evento_url(evento, format: :json)
