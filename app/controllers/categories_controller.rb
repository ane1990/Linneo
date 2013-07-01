class CategoriesController < ApplicationController
  def index
    @categories = Category.order('name ASC').all
  end
end
