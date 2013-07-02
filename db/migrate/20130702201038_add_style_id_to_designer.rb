class AddStyleIdToDesigner < ActiveRecord::Migration
  def change
    add_column :designers, :style_id, :integer
  end
end
