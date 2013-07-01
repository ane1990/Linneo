class Product < ActiveRecord::Base
  attr_accessible :description, :name, :range_id
  belongs_to :category
end
