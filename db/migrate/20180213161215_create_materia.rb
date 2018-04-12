class CreateMateria < ActiveRecord::Migration[5.0]
  def change
    create_table :materia do |t|
      t.string :nombre
      t.references :colegio, foreign_key: true
      t.string :horario
      t.references :profesor, foreign_key: true

      t.timestamps
    end
  end
end
