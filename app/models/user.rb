class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :circles_users, dependent: :destroy
  has_many :circles, through: :circles_users

  has_many :followings
  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Following'
  has_many :followers, through: :follower_relationships, source: :follower
  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Following'
  has_many :following, through: :following_relationships, source: :following

  has_many :sent_messages, foreign_key: :sender_id, class_name: 'Message', dependent: :destroy
  has_many :received_messages, foreign_key: :receiver_id, class_name: 'Message', dependent: :destroy

  has_many :likes_posts, dependent: :destroy

  has_many :comments, dependent: :destroy
  has_many :comments_likes, dependent: :destroy

  has_many :posts_users, dependent: :destroy
  has_many :posts, through: :posts_users
  
  has_many :posted_songs, through: :posts_users, source: :song

  has_many :libraries_links, dependent: :destroy
  has_many :library_songs, through: :libraries_links, source: :song

  validates :username, presence: true
  validates :email_address, presence: true, uniqueness: true
end

# has_many :followers, class_name: 'Following', foreign_key: 'followee_id', dependent: :destroy
# has_many :followees, class_name: 'Following', foreign_key: 'follower_id', dependent: :destroy
