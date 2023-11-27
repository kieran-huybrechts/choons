class PostsUser < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :song
end
