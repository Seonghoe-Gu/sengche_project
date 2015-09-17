class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :location_id
      t.string :sports
      t.string :date
      t.string :time
      t.string :rec_num
      t.string :tot_num
      t.text   :comment
      t.timestamps null: false
    end
  end
end
