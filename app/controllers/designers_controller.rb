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
    Designer.create(params[:designer])
    redirect_to admins_path
  end
  
end
