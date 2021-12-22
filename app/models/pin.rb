class Pin < ApplicationRecord 
  has_one_attached :photo 

  validates :title, :user_id, :created_at, :photo, presence: true

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

end 