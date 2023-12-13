class Song < ApplicationRecord
  has_many :posts_users, dependent: :destroy
  has_many :posts, through: :posts_user
end
