class User < ApplicationRecord
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :circles_users, dependent: :destroy
  has_many :circles, through: :circles_users

  # Follower relationships
  has_many :follower_relationships, class_name: 'Following', dependent: :destroy
  has_many :followers, through: :follower_relationships, source: :follower

  # Followee relationships
  has_many :following_relationships, class_name: 'Following', dependent: :destroy
  has_many :following, through: :following_relationships, source: :followee

  has_many :sent_messages, class_name: 'Message', dependent: :destroy
  has_many :received_messages, class_name: 'Message', dependent: :destroy

  has_many :likes_posts, dependent: :destroy

  has_many :comments, dependent: :destroy
  has_many :comments_likes, dependent: :destroy

  has_many :posts_users, dependent: :destroy
  has_many :posts, through: :posts_users

  has_many :posted_songs, through: :posts_users, source: :song

  has_many :libraries_links, dependent: :destroy
  has_many :library_songs, through: :libraries_links, source: :song

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
end
