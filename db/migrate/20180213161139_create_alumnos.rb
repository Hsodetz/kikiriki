class CreateAlumnos < ActiveRecord::Migration[5.0]
  def change
    create_table :alumnos do |t|
      t.integer :numeroMatricula
      t.string :nombres
      t.string :apellidos
      t.integer :edad
      t.references :colegio, foreign_key: true

      t.timestamps
    end
  end
end
