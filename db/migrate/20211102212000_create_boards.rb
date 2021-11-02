class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :name, null: false
      t.text :description
      t.boolean :public, null: false
      t.integer :user_id, null: false
      t.datetime :created_at, null: false 
    end
    add_index :boards, :user_id
  end
end
