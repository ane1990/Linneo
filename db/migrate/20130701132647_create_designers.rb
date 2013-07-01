class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :name
      t.string :last_name
      t.text :bio
      t.string :img_path

      t.timestamps
    end
  end
end
