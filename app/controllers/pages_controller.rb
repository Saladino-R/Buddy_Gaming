class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @post = Post.new
    @posts = Post.all.order(created_at: :DESC)
    @requests = Friendship.where(friend_id: current_user.id).where(confirm: nil)
    @friends_list = Friendship.where(friend_id: current_user.id).where(confirm: true)



  end
end
