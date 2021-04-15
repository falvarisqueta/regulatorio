class AddInvestigadorToEstudio < ActiveRecord::Migration[6.0]
  def change
    add_column :estudios, :investigador_id, :integer
  end
end
