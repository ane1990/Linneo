class DesignersController < ApplicationController
  def index
    @designers = Designer.order('last_name ASC').all
  end

  def show
    @designer = Designer.find(params[:id])
  end
end
