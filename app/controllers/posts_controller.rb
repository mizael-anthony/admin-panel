class PostsController < ApplicationController

  before_action :set_post, only: [:update, :show, :destroy]

  after_action :say_hello, except: [:index]

  def proof
    render json: {
      code: 200,
      message: 'Articles privées'
    }
  end

  def create
    @post = Post.create(post_params)
    render json: @post, status: :created
  end

  def index
    @posts = Post.all
    render json: @posts, status: :ok
  end

  def show
    render json: @post, status: :found
  end

  def update
    @post.update(post_params)
    render json: @post, status: :ok
  end

  def destroy
    @post.destroy
    render json: {}, status: :no_content
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def say_hello
    puts "I'm function called after all action"
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
