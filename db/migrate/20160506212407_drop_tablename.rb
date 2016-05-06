class DropTablename < ActiveRecord::Migration
  def change
    drop_table :notes
  end
end
