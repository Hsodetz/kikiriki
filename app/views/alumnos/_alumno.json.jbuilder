json.extract! alumno, :id, :numeroMatricula, :nombres, :apellidos, :edad, :colegio_id, :created_at, :updated_at
json.url alumno_url(alumno, format: :json)
