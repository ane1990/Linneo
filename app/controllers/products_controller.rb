class ProductsController < ApplicationController
  def index

     @category = Category.find(params[:range_id])
     @products = @category.products.order('name ASC')
    end
  
end
