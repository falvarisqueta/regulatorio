class CreateEstudios < ActiveRecord::Migration[6.0]
  def change
    create_table :estudios do |t|
      t.string :nombre
      t.integer :estado
      t.integer :especialidad_id
      t.date :fecha_ppi
      t.date :fecha_aprobacion_ppi
      t.date :fecha_envio_sponsor
      t.date :fecha_envio_ccis
      t.date :fecha_aprobacion_ccis
      t.date :fecha_envio_anmat
      t.date :fecha_aprobacion_anmat
      t.text :comentario
      t.timestamps
    end
  end
end
