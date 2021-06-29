class AddFilesToEstudio < ActiveRecord::Migration[6.0]
  def change
    add_column :estudios, :archivos, :json
  end
end
