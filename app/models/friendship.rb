class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"
  #uniqueness: { scope: :user_id } >>> The combinantion "user_id" + "friend_id" has to be unique (They can only become friends once)
  #comparison: { other_than: :user_id } >>>  The user_id and the friend_id CAN'T be the same (You can't be friend with yourself)
  validates :friend_id, presence: true, uniqueness: { scope: :user_id }, comparison: { other_than: :user_id }


end
