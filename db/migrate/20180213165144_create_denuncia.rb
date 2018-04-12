class CreateDenuncia < ActiveRecord::Migration[5.0]
  def change
    create_table :denuncia do |t|
      t.string :asunto
      t.text :texto
      t.string :imagen
      t.string :archivo
      t.references :padre, foreign_key: true
      t.references :alumno, foreign_key: true
      t.string :gravedad

      t.timestamps
    end
  end
end
