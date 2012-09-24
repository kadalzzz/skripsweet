class ProductsController < ApplicationController
 #auto_complete_for :post, :name 

 before_filter :require_login

  

  def index
     @products = Product.all
     #@products = Product.paginate(:page => params[:page], :per_page => 10)
     #@assets = AssetsProduct.all
     
     if params[:term]
        @products = Product.find(:all,:conditions => ['name LIKE ?|| description LIKE ? ', "%#{params[:term]}%","%#{params[:term]}%"])
     end
     
    respond_to do |format|  
      format.html  # index.html.erb  
# Here is where you can specify how to handle the request for "/people.json"
      format.json { render :json => @products.to_json }
    end

  end
  
  def show
    @product= Product.find_by_id(params[:id])
  end
  
  def search
    #try, coba, haha, hehe = Algorithm.priority
    @products = Product.search(params[:search])
    @find= params[:search]
    #@posts = Product.paginate(:page => params[:page], :per_page => 10)
  end
  
  def auto_complete_for_product_name
  search = params[:product][:name]
  @products = Product.search(search) unless search.blank?
  render :partial => "products/try"
end
  
  
end
