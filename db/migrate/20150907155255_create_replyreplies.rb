class CreateReplyreplies < ActiveRecord::Migration
  def change
    create_table :replyreplies do |t|
      t.integer :userreply_id
      t.string :userreply_name
      t.string :userreply_password
      t.text :userreply_content
      t.string :userreply_img
      t.timestamps null: false
    end
  end
end
