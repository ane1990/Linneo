class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :Name
      t.text :Description
      t.string :Range
      t.string :Designer

      t.timestamps
    end
  end
end
