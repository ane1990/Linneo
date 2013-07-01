class ProductsController < ApplicationController
  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @products = @category.products.order('name ASC')
    elsif params[:service_id]
      @service = Service.find(params[:service_id])
      @products = @service.products.order('name ASC')
    elsif params[:designer_id]
      @designer = Designer.find(params[:designer_id])
      @products = @designer.products.order('name ASC')
    end
  end
  
  def show
    @product = Product.find(params[:id])
    @services = @product.services.order('name ASC')
    @designer = Designer.find(@product.designer_id)
    @path = :back
  end

end
