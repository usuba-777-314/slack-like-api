class Channel < ApplicationRecord
  has_many :channel_users
  has_many :user, through: :channel_users

  has_many :channel_messages
  has_many :messages, through: :channel_messages
end
