class Post < ApplicationRecord
  belongs_to :circle, optional: true
  belongs_to :receiver, class_name: 'User', optional: true

  has_many :user_posts, dependent: :destroy
  has_many :users, through: :user_posts
  has_many :songs, through: :user_posts
  has_many :likes_posts, dependent: :destroy
  has_many :liking_users, through: :likes_posts, source: :user
  has_many :comments, dependent: :destroy
end
