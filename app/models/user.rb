class User < ApplicationRecord
  has_many :posts
  has_many :messages
  has_many :friendships
  has_many :friends, through: :friendships, class_name: "User"
  has_many :user_games
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
