class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, format: { without: /\s/ }, length: { maximum: 30}, presence: true
  validates :email, length: { maximum: 100}, presence: true
end
