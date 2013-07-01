class Product < ActiveRecord::Base
  attr_accessible :description, :name, :category_id
  belongs_to :category
  has_and_belongs_to_many :services
  belongs_to :designer
end
