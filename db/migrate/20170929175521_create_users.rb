class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.string :fn,                 null: false, limit: 16
      t.string :sn,                 null: false, limit: 16
      t.string :ln,                 null: false, limit: 16
      t.string :email,              null: false, limit: 32
      t.string :encrypted_password, null: false, limit: 128
      t.string :confirmation_token,              limit: 128
      t.string :remember_token,     null: false, limit: 128
    end

    add_index :users, :email
    add_index :users, :remember_token
  end
end
