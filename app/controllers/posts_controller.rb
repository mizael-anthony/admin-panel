class PostsController < ApplicationController
  def private
    render json: {
      code: 200,
      message: 'Articles privées'
    }
  end

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end
end
