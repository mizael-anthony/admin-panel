class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    @category = get_category(params[:id])
    render json: @category
  end

  def update
    @category = get_category(params[:id])
    @category.update(category_params)
    render json: @category
  end

  def create
    @category = Category.create(category_params)
    render json: @category
  end

  def destroy
    @category = get_category(params[:id])
    @category.destroy
    render json: {}
  end
  
  private

  def get_category(id)
    Category.find(id)
  end

  def category_params
    params.require(:category).permit(:name, :slug)
  end

end
