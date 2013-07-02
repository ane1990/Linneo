class RemoveNameFromStyle < ActiveRecord::Migration
  def up
    remove_column :styles, :name
  end

  def down
    add_column :styles, :name, :string
  end
end
