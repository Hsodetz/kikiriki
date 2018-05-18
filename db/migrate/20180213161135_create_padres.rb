class CreatePadres < ActiveRecord::Migration[5.0]
  def change
    create_table :padres do |t|
      t.string :nombres
      t.string :apellidos
      t.string :pais
      t.string :correo
      t.string :clave
      t.string :telefono

      t.timestamps
    end
  end
end
