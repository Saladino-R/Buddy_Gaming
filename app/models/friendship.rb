class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"
  validates :friend_id, presence: true, uniqueness: true, comparison: { other_than: :user_id }
end
