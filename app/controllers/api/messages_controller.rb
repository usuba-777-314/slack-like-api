class Api::MessagesController < ApplicationController
  def index
    @messages = channel_messages_query
  end

  def create
    data = params.permit(:text, :channel_id)
    @message = send_to_channel(data)
  end

  def destroy
    id = params[:id]
    message = Message.find(id)
    message.destroy
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

    def new_message(data)
      Message.new({
        user_id: current_user.id,
        text: data[:text],
        timestamp: DateTime.now,
      })
    end

    def send_to_channel(data)
      message = new_message(data)

      message.channel_message = ChannelMessage.new({
        channel_id: data[:channel_id]
      })

      message.save!
      message
    end
end
