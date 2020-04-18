class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :title, length: { maximum: 30 }, presence: true
  validates :body, length: { maximum: 90 }, presence: true
  validates :post_id, presence: true
end
