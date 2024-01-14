class PostsController < ApplicationController
  before_action :authenticate_user
  
  def index
    @posts = Blog.all
  end
  
  def show
    @post = Blog.find_by(id:params[:id])
    @user = @post.user
    @likes_count = Like.where(post_id: @post.id).count
  end
  
  def new
  end
end
