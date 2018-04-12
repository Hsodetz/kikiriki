class CreateColegios < ActiveRecord::Migration[5.0]
  def change
    create_table :colegios do |t|
      t.string :nombre
      t.text :direccion
      t.string :pais

      t.timestamps
    end
  end
end
