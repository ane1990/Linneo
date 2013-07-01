class RemoveRangeIdFromProduct < ActiveRecord::Migration
  def up
    remove_column :products, :range_id
  end

  def down
    add_column :products, :range_id, :integer
  end
end
