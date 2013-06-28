class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.text :info
      t.text :faq

      t.timestamps
    end
  end
end
