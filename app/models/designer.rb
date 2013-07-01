class Designer < ActiveRecord::Base
  attr_accessible :bio, :img_path, :last_name, :name
  has_many :products
end
