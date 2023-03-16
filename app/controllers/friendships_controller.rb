class FriendshipsController < ApplicationController
  def create
    # Finding friend_id through user_game id
    friend_id = UserGame.find(params[:user_game_id]).user_id
    # We only save it in the DB, not in the user friends list
    @friendship = Friendship.new(user_id: current_user.id, friend_id: friend_id )
    my_choice = current_user.user_games.last
    if @friendship.save
      redirect_to user_game_results_path(my_choice.id), notice: "Friend request sent"
    end
  end

  def update
    @friendship_request = Friendship.find(params[:id])
    if params[:confirm] == "true"
      @friendship_request.confirm = true
      Chatroom.create(friend_id: current_user.id, user_id: @friendship_request.user_id, name: "#{current_user.nickname} & #{@friendship_request.user.nickname}")
    else
      @friendship_request.confirm = false
    end
    # ^ If we press the button "DELETE", we only change the value of confirm: to "false", but we still save the friendship request in our DB
    @friendship_request.save

    redirect_to dashboard_path, notice: "#{@friendship_request.user.nickname} and you are now friends"
  end
end
