class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.integer :follower_id, null: false 
      t.integer :followed_id, null: false 
      t.datetime :created_at, null: false 
      t.timestamps
    end
      add_index :follows, [:follower_id, :followed_id], unique: true
  end
end
