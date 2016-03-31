class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :number
      t.decimal :rate, precision: 8, scale: 2
      t.integer :building_id
      t.string :description
      t.integer :unit_type_id
      t.timestamps
    end

    add_index :units, [:building_id, :number]
    add_index :units, [:building_id, :unit_type_id]
    add_index :units, [:building_id]
  end
end
