class AddColumnsToDesigner < ActiveRecord::Migration
  def change
    add_column :designers, :product_path, :string
    add_column :designers, :product_description, :text
  end
end
