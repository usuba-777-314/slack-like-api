class ChannelUser < ApplicationRecord
  belongs_to :channnel
  belongs_to :user
end
