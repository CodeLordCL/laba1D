class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :age
      t.integer :size

      t.timestamps
    end
  end
end
