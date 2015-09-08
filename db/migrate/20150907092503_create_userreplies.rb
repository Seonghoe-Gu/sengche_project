class CreateUserreplies < ActiveRecord::Migration
  def change
    create_table :userreplies do |t|
      t.integer :user_id
      t.string :reply_id
      t.string :reply_name
      t.string :reply_img
      t.string :reply_password
      t.string :id_img
      t.text :reply_content
      t.timestamps null: false
    end
  end
end
