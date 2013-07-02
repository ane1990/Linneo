class Product < ActiveRecord::Base
  attr_accessible :description, :name, :category_id, :designer_id, :type_id
  belongs_to :category
  has_and_belongs_to_many :services
  belongs_to :designer
  belongs_to :type
    
  def prev(cat)
    Product.where(["id < ? and category_id=#{cat}", id]).last
  end

  def next(cat)
    Product.where(["id > ? and category_id=#{cat}", id]).first
  end
end
