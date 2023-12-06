class PostsController < ApplicationController
  def index
    @posts = Blog.all
  end
  
  def show
    @post = Blog.find_by(id:params[:id])
  end
  
  def new
  end
end
