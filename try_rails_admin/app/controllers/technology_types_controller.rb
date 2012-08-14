class TechnologyTypesController < ApplicationController

  def show
    @products = TechnologyType.find_by_id(params[:id]).products.all
  end
end
