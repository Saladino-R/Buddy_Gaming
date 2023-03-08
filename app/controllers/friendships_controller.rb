class FriendshipsController < ApplicationController

  def create
    #Finding friend_id through user_game id
    friend_id = UserGame.find(params[:id]).user.id
    #We only save it in the DB, not in the user friends list
    @friendship = Friendship.create(user_id: current_user.id, friend_id: friend_id )

    # if @friendship.confirm == true
    #   raise
    #   @friendship.save
    #   redirect_to dashboard_path(user_id)
    # end
  end

end
