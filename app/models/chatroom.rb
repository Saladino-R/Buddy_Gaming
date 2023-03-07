class Chatroom < ApplicationRecord
  has_many :messages
  has_many :chatrooms, through: :messages
end
