class SetConsultaLeidoFalseAsDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :consulta, :leido, :boolean, default: false
  end
end
