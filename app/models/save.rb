class Save < ApplicationRecord 
  validates :pin_id, :board_id, :created_at, presence: true

    belongs_to :pin,
      class_name: :Pin,
      foreign_key: :pin_id

    belongs_to :board, optional: true,
      class_name: :Board,
      foreign_key: :board_id
end 