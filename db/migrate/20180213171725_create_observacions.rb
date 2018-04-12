class CreateObservacions < ActiveRecord::Migration[5.0]
  def change
    create_table :observacions do |t|
      t.string :asunto
      t.text :mensajes
      t.references :profesor, foreign_key: true
      t.references :padre, foreign_key: true

      t.timestamps
    end
  end
end
