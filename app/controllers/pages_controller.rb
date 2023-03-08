class PagesController < ApplicationController
  def home
  end

  def dashboard
    @post = Post.new
  end
end
