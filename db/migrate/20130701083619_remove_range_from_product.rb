class RemoveRangeFromProduct < ActiveRecord::Migration
  def up
    remove_column :products, :Range
  end

  def down
    add_column :products, :Range, :string
  end
end
