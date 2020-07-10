class Message < ApplicationRecord
  belongs_to :user

  has_one :channel_message, dependent: :destroy
  has_one :channel, through: :channel_message
end
