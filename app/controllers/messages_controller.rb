class MessagesController < ApplicationController

  # def new
  #   @chatroom = Chatroom.new
  #   @message = Message.new
  # end
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)

    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        message: render_to_string(partial: "message", locals: { message: @message }),
        sender_id: @message.user.id
      )
      head :no_content
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
