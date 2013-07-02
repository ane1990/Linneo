class RemoveStyleIdFromDesigner < ActiveRecord::Migration
  def up
    remove_column :designers, :style_id
  end

  def down
    add_column :designers, :style_id, :string
  end
end
