require 'date'
class User < ApplicationRecord
  has_many :posts
  has_many :messages
  has_many :chatrooms, through: :messages
  has_many :friendships
  has_many :user_games
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :bio, length: { maximum: 500 }
  validates :birthday, presence: true
  validates :city, presence: true

  def friends
    friends = []
    @received_friends_r = Friendship.where(friend_id: self.id).where(confirm: true)
    @sent_friends_r = Friendship.where(user_id: self.id).where(confirm: true)
    @received_friends_r.each do |friend|
      friends << User.find(friend.user_id)
    end
    @sent_friends_r.each do |friend|
      friends << User.find(friend.friend_id)
    end
    return friends
  end

  def user_age
    age = Date.today.year - self.birthday.year
    return age
  end

  def user_age
    now = Time.now.utc.to_date
    @dob = now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end

end
