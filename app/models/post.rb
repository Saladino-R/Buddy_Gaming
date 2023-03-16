class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :content, length: { maximum: 500 }, presence: true
end
