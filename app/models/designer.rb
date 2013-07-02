class Designer < ActiveRecord::Base
  attr_accessible :bio, :img_path, :last_name, :name
  has_many :products
  
    def previous
    Designer.where(["id < ?", id]).last
  end

  def next
    Designer.where(["id > ?", id]).first
  end
end
