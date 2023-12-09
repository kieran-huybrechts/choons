class Post < ApplicationRecord
  belongs_to :circle, optional: true
  belongs_to :receiver, class_name: 'User', optional: true
  has_many :posts_users, dependent: :destroy
  has_many :users, through: :posts_users
  has_many :songs, through: :posts_users
  has_many :likes_posts, dependent: :destroy
  has_many :liking_users, through: :likes_posts, source: :user
  has_many :comments, dependent: :destroy
end
