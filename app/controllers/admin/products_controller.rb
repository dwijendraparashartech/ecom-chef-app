class Admin::ProductsController < Admin::ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by_id(params[:id])
  end

  def update
    @product = Product.find_by_id(params[:id])
    @product.update({status:true})
    redirect_back(fallback_location: root_path)
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  def destroy
    @product = Product.find_by_id(params[:id])
    @product.destroy
    redirect_back(fallback_location: root_path)
  end
end