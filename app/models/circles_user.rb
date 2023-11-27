class CirclesUser < ApplicationRecord
  belongs_to :circle
  belongs_to :user

  validates :is_admin, inclusion: { in: [true, false] }
end
