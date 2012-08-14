class ProjectTypesController < ApplicationController
  def show
    @products = ProjectType.find_by_id(params[:id]).products.all
  end
 

end
