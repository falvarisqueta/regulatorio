class CreateInvestigadors < ActiveRecord::Migration[6.0]
  def change
    create_table :investigadors do |t|
      t.string :nombre 
      t.timestamps
    end
  end
end
