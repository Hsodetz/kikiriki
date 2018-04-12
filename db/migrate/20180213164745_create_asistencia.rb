class CreateAsistencia < ActiveRecord::Migration[5.0]
  def change
    create_table :asistencia do |t|
      t.references :materia, foreign_key: true
      t.references :alumno, foreign_key: true
      t.string :resultadoAsistencia
      t.date :fechaHora

      t.timestamps
    end
  end
end
