class ServicesController < ApplicationController
  def index
    @services = Service.all
  end
  
  def show 
    @service = Service.find(params[:id])
  end
  
  def new 
    @service = Service.new
  end
  
  def create
    Service.create(params[:service])
    redirect_to admins_path
  end
  
end
