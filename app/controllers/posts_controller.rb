class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.delete
    redirect_to dashboard_path
  end

  private

  def post_params
    params.require(:post).permit(:content, :user_id, :photo)
  end
end
