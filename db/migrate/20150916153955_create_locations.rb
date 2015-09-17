class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location
      t.float :lng
      t.float :lat
      t.integer :zoom
      t.timestamps null: false
    end
  end
end
