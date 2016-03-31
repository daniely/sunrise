class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :description
      t.integer :unit_id
      t.timestamps
    end
  end
end
