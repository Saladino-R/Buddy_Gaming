class PagesController < ApplicationController
  def home
  end

  def dashboard
    @post = Post.new
    @posts = Post.all.order(created_at: :DESC)
  end
end
