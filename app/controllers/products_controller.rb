class ProductsController < ApplicationController
  def index
    @types = Type.all
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
  end
  
  def new 
    @product = Product.new
    @categories = Category.all
    @designers = Designer.all
    @types = Type.all
  end
  
  def create
    image_io1 = params[:product][:image_url_1]
    File.open(Rails.root.join('public','images', image_io1.original_filename), 'wb') do |file|
      file.write(image_io1.read)
    end
    params[:product][:image_url_1] = image_io1.original_filename
    
    image_io2 = params[:product][:image_url_2]
    File.open(Rails.root.join('public','images', image_io2.original_filename), 'wb') do |file|
      file.write(image_io2.read)
    end
    params[:product][:image_url_2] = image_io2.original_filename
    
    image_io3 = params[:product][:image_url_3]
    File.open(Rails.root.join('public','images', image_io3.original_filename), 'wb') do |file|
      file.write(image_io3.read)
    end
    params[:product][:image_url_3] = image_io3.original_filename
    
    image_io4 = params[:product][:image_url_4]
    File.open(Rails.root.join('public','images', image_io4.original_filename), 'wb') do |file|
      file.write(image_io4.read)
    end
    params[:product][:image_url_4] = image_io4.original_filename
    
    Product.create(params[:product])
    redirect_to admins_path
  end

end
