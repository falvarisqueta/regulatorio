class CreateEspecialidads < ActiveRecord::Migration[6.0]
  def change
    create_table :especialidads do |t|
      t.string :nombre
      t.timestamps
    end
  end
end
