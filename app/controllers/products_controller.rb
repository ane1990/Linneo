class ProductsController < ApplicationController
  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @products = @category.products.order('name ASC')
    elsif params[:service_id]
      @service = Service.find(params[:service_id])
      @products = @service.products.order('name ASC')
    end
  end

end
