class Api::ChannelsController < ApplicationController
  def show
    id = params[:id]
    @channel = Channel.find(id)
  end
end
