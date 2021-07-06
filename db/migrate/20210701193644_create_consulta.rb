class CreateConsulta < ActiveRecord::Migration[6.0]
  def change
    create_table :consulta do |t|
      t.integer :estudio_id
      t.boolean :leido
      t.text :texto
      t.string :asunto

      t.timestamps
    end
  end
end
