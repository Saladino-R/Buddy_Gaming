class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @post = Post.new
    @posts = Post.all.order(created_at: :DESC)
    @requests = Friendship.where(friend_id: current_user.id).where(confirm: nil)
    # @received_friends_r = Friendship.where(friend_id: current_user.id).where(confirm: true)
    # @sent_friends_r = Friendship.where(user_id: current_user.id).where(confirm: true)
    # @friends_list = @received_friends_r +  @sent_friends_r


  end
end
