class CirclesUser < ApplicationRecord
  belongs_to :circle
  belongs_to :user
end
