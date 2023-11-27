class Song < ApplicationRecord
  has_many :user_posts, dependent: :destroy
  has_many :users, through: :user_posts
  has_many :posts, through: :user_posts

  has_many :libraries_links, dependent: :destroy
  has_many :library_users, through: :libraries_links, source: :user
end
