class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable
      t.string :email,                  null: false, default: ""
      t.string :name,                   null: false, default: ""
      t.string :nickname,               null: false, default: ""
      t.string :oneline,                null: false, default: ""
      t.text   :profile,                null: false, default: ""
      t.string :sex,                    null: false, default: ""
      t.string :img,                    null: false, default: ""
      t.string :birth_year,             null: false, default: ""
      t.string :birth_month,            null: false, default: ""
      t.string :birth_day,              null: false, default: ""
      t.string :badminton,              null: false, default: ""
      t.string :running,                null: false, default: ""
      t.string :cycle,                  null: false, default: ""
      t.string :bowling,                null: false, default: ""
      t.string :pingpong,               null: false, default: ""
      t.string :soccer,                 null: false, default: ""
      t.string :jokgu,                  null: false, default: ""
      t.string :tennis,                 null: false, default: ""
      t.string :pocket,                 null: false, default: ""
      t.string :encrypted_password,     null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
