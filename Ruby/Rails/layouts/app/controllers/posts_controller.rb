class PostsController < ApplicationController
  def index
    @posts  = Post.all
    @users = User.all
  end

  def create
    if Post.create(post_params)
      redirect_to '/posts'
    else flash[:errors] = post.errors.full_messages
      redirect_to :back
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
