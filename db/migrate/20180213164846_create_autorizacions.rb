class CreateAutorizacions < ActiveRecord::Migration[5.0]
  def change
    create_table :autorizacions do |t|
      t.string :codigo
      t.references :alumno, foreign_key: true
      t.references :colegio, foreign_key: true

      t.timestamps
    end
  end
end
