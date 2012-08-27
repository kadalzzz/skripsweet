class RankController < ApplicationController
  def index
    @products = Product.find(:all, :order => "total_score DESC")
  end

end
