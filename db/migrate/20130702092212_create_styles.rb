class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|

      t.timestamps
    end
  end
end
