class CreateRanges < ActiveRecord::Migration
  def change
    create_table :ranges do |t|
      t.string :Name

      t.timestamps
    end
  end
end
