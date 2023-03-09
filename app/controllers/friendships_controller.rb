class FriendshipsController < ApplicationController


  def create
    #Finding friend_id through user_game id
    friend_id = UserGame.find(params[:user_game_id]).user_id
    #We only save it in the DB, not in the user friends list
    @friendship = Friendship.new(user_id: current_user.id, friend_id: friend_id )
    my_choice = current_user.user_games.last
    if @friendship.save
      redirect_to user_game_results_path(my_choice.id), notice: "Friend request sent"
    end
    # if @friendship.confirm == true
    #   raise
    #   @friendship.save
    #   redirect_to dashboard_path(user_id)
    # end
  end
end
