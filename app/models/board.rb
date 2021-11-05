class Board < ApplicationRecord
  validates :name, :user_id, :created_at, presence: true
  validates :public, inclusion: { in: [true, false] }

    belongs_to :user,
      class_name: :User,
      foreign_key: :user_id
    
    has_many :saves,
      dependent: :destroy,
      class_name: :Save,
      foreign_key: :board_id

    has_many :pins,
      dependent: :destroy,
      through: :saves,
      source: :pin
end