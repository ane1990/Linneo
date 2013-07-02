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
end
