class AddTypeIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :type_id, :integer
  end
end
