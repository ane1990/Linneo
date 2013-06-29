class Service < ActiveRecord::Base
  attr_accessible :faq, :info, :name
  def previous
    Service.where(["id < ?", id]).last
  end

  def next
    Service.where(["id > ?", id]).first
  end
end
