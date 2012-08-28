class RankController < ApplicationController
  def index
    @products = Product.find(:all, :order => "total_score DESC")
    @value = AhpAfter.first
  end

end
