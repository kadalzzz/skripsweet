class CategoriesController < ApplicationController
  before_filter :require_login
  
  def index
    @categories = Category.all
  end
  
  def show
    @products = Product.find_all_by_category_id(params[:id])
  end
  
end
