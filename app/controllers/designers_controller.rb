class DesignersController < ApplicationController
  def index
    @designers = Designer.all
  end

  def show
    if params[:designer_id]
      @designer = Designer.find(params[:designer_id])
    else
      @designer = Designer.find(params[:id])
    end
  end
  
  def new 
    @designer = Designer.new
  end
  
  def create
    image_io1 = params[:designer][:img_path]
    File.open(Rails.root.join('public','images', image_io1.original_filename), 'wb') do |file|
      file.write(image_io1.read)
    end
    params[:designer][:img_path] = image_io1.original_filename
    
    image_io2 = params[:designer][:product_path]
    File.open(Rails.root.join('public','images', image_io2.original_filename), 'wb') do |file|
      file.write(image_io2.read)
    end
    params[:designer][:product_path] = image_io2.original_filename
    
    Designer.create(params[:designer])
    redirect_to admins_path
  end
  
end
