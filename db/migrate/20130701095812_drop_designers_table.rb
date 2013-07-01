class DropDesignersTable < ActiveRecord::Migration
  def up
    drop_table :designers
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
