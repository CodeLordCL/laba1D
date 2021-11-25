class CreateStreets < ActiveRecord::Migration[5.2]
  def change
    create_table :streets do |t|
      t.string :name
      t.integer :building_count
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
