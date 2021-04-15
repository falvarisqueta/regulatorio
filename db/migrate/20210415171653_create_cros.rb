class CreateCros < ActiveRecord::Migration[6.0]
  def change
    create_table :cros do |t|
      t.string :nombre 
      t.timestamps
    end
  end
end
