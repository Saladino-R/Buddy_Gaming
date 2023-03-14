class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end
  def new
    @chatroom = Chatroom.new
  end
  def show
    @chatroom = Chatroom.find(params[:id])

    @message = Message.new
  end
end
