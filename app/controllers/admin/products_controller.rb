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
end