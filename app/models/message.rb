class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User', inverse_of: :sent_messages
  belongs_to :receiver, class_name: 'User', inverse_of: :received_messages

  validates :content, presence: true, length: { maximum: 500 }
end
