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
end
