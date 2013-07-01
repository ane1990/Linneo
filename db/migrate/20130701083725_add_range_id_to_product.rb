class AddRangeIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :range_id, :integer
  end
end
