class CreateProfesors < ActiveRecord::Migration[5.0]
  def change
    create_table :profesors do |t|
      t.string :nombres
      t.string :apellidos
      t.string :telefono
      t.string :correo

      t.timestamps
    end
  end
end
