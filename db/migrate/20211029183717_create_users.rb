class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.integer :age, null: false
      t.string :name, null: false
      t.string :username, null: false
      t.text :bio
      t.string :pronouns
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.datetime :created_at, null: false
      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :session_token
    add_index :users, :email, unique: true

  end
end
