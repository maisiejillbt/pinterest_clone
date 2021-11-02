class CreateSaves < ActiveRecord::Migration[5.2]
  def change
    create_table :saves do |t|
      t.integer :pin_id, null: false 
      t.integer :board_id, null: false 
      t.datetime :created_at, null: false 
    end
    add_index :saves, :pin_id
    add_index :saves, [:pin_id, :board_id], unique: true
  end
end
