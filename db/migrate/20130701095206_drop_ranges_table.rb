class DropRangesTable < ActiveRecord::Migration
  def up
    drop_table :ranges
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
