require 'date'

class Api::MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    data = params.require(:message).permit(:text)
    data[:timestamp] = DateTime.now

    @message = Message.create data
  end

  def destroy
    id = params.require(:id)
    message = Message.find_by_id(id)
    message.destroy
  end
end
