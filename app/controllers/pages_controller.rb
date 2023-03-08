class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @post = Post.new
    @posts = Post.all.order(created_at: :DESC)
  end
end
