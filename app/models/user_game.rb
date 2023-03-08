class UserGame < ApplicationRecord
  belongs_to :user
  validates :language, presence: true
  validates :level, presence: true
  validates :mood, presence: true
  validates :mode, presence: true
  validates :console, presence: true
  validates :game_id, presence: true
end
