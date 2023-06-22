# Pages Controller
class PagesController < ApplicationController
  def home
    render json: { code: 301, message: 'Home Page' }
  end

  def hello
    @name = params[:name]
    hi = {
      code: 200,
      message: "Hello #{@name}"
    }
    render json: hi
  end
end
