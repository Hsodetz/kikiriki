class CreateEventos < ActiveRecord::Migration[5.0]
  def change
    create_table :eventos do |t|
      t.string :imagen
      t.string :titulo
      t.text :detalle
      t.string :pais
      t.date :fechaEvento

      t.timestamps
    end
  end
end
