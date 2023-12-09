class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  has_many :comments_likes, dependent: :destroy
  has_many :liking_users, through: :comments_likes, source: :user
end
