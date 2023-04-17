class FriendshipsController < ApplicationController
  def create
    # Finding friend_id through user_game id
    friend_id = UserGame.find(params[:user_game_id]).user_id
    # In this case FRIENDSHIP = FRIEND REQUEST We only save it in the DB, not in the user friends list
    @friendship = Friendship.new(user_id: current_user.id, friend_id: friend_id )
    my_choice = current_user.user_games.last
    if @friendship.save
    # After sending the freind request, the card disappears and we are redirected to the same page and
    # we can keep scrolling to the other matches
      redirect_to user_game_results_path(my_choice.id), notice: "Friend request sent"
    end
  end

  def update
    @friendship_request = Friendship.find(params[:id])
    if params[:confirm] == "true"
      @friendship_request.confirm = true
      Chatroom.create(friend_id: current_user.id, user_id: @friendship_request.user_id, name: "#{current_user.nickname} & #{@friendship_request.user.nickname}")
      @friendship_request.save
      redirect_to dashboard_path, notice: "#{@friendship_request.user.nickname} and you are now friends"
    else
      @friendship_request.confirm = false
      @friendship_request.save
      redirect_to dashboard_path, notice: "You deleted #{@friendship_request.user.nickname}'s friendship request."
    end
    #  If we press the button "DELETE", we only change the value of confirm: to "false", but we still save the friendship request in our DB
  end

  def destroy
    my_friend = User.find(params[:id])
    friendships = Friendship.where(user_id: current_user.id).where(friend_id: my_friend.id)
    friendships = Friendship.where(user_id: my_friend.id).where(friend_id: current_user.id) if friendships.empty?
    friendships.destroy_all
    #  friendship_ids = my_friend.friendships.map do |user_id, friend_id|
    #    user_id = my_friend.id && friend_id = current_user.id
    #  end
    redirect_to dashboard_path
  end
end
