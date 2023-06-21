# Pages Controller
class PagesController < ApplicationController
  def home
    render json: { code: 301, message: 'Home Page' }
  end

  def hello
    hi = {
      code: 200,
      message: 'Hello Beubeu'
    }
    render json: hi
  end
end
