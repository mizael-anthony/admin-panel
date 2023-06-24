class PostsController < ApplicationController
  def privated
    render json: {
      code: 200,
      message: 'Articles privées'
    }
  end

  def create
    @post = Post.create(post_params)
    render json: @post
  end

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = get_post(params[:id])
    render json: @post
  end

  def update
    @post = get_post(params[:id])
    @post.update(post_params)
    render json: @post
  end

  def destroy
    @post = get_post(params[:id])
    @post.destroy
    render json: {}
  end

  private

  def get_post(id)
    Post.find(id)
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
