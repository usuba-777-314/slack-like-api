class Api::MessagesController < ApplicationController
  def index
    @messages = channel_messages_query
  end

  private
    def query
      Message.joins(:user).order(timestamp: "DESC")
    end

    def channel_messages_query
      channel_id = params[:channel_id]

      query.
        joins(:channel_message).
        where(channel_messages: { channel_id: channel_id })
    end
end
