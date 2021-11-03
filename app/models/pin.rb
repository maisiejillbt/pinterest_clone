class Pin < ApplicationRecord 
  validates :title, :user_id, :created_at, presence: true

  belongs_to :user,
    class_name: :User,
    foreign_key: :user_id

  has_many :saves,
    dependent: :destroy,
    class_name: :Save,
    foreign_key: :pin_id
  
  has_many :boards,
    through: :saves,
    source: :board

  has_many_attached :photos # may end up coming back to this -- 
end 