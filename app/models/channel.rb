class Channel < ApplicationRecord
  has_many :channel_users
  has_many :user, through: :channel_users
end
