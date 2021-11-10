class Follow < ApplicationRecord
    validates :follower_id, :followed_id, :created_at, presence: true

    belongs_to :follower,
      class_name: :User,
      foreign_key: :follower_id

    belongs_to :followed, 
      class_name: :User,
      foreign_key: :followed_id
end
