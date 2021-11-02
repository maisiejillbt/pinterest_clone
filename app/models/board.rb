class Board < ApplicationRecord
  validates :name, :user_id, :created_at, :public, presence: true
  validates :public, inclusion: { in: [true, false] }

    belongs_to :user,
      class_name: :User,
      foreign_key: :user_id
    
    has_many :saves,
      class_name: :Save,
      foreign_key: :board_id

    has_many :pins,
      through: :saves,
      source: :pin

end