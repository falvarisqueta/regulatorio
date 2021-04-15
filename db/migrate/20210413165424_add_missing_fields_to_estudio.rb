class AddMissingFieldsToEstudio < ActiveRecord::Migration[6.0]
  def change
    add_column :estudios, :codigo, :string
    add_column :estudios, :commitment, :integer
    add_column :estudios, :area_id, :integer
    add_column :estudios, :cro_id, :integer
    add_column :estudios, :contrato, :integer
    add_column :estudios, :fecha_envio_ccis_centro, :date
    add_column :estudios, :fecha_aprobacion_ccis_centro, :date
    add_column :estudios, :fecha_envio_anmat_centro, :date
    add_column :estudios, :fecha_aprobacion_anmat_centro, :date
  end
end
