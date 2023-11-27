class Circle < ApplicationRecord
  has_many :circles_users, dependent: :destroy
  has_many :users, through: :circles_users

  validates :name, presence: true, length: { maximum: 40 }
  validates :name, uniqueness: true
end
