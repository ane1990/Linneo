class Service < ActiveRecord::Base
  attr_accessible :faq, :info, :name
  has_and_belongs_to_many :products

  def previous
    Service.where(["id < ?", id]).last
  end

  def next
    Service.where(["id > ?", id]).first
  end
end
 
 
 
 
  
  
  
