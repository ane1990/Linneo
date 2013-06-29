class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :Name
      t.string :Last_Name
      t.text :Biography

      t.timestamps
    end
  end
end
