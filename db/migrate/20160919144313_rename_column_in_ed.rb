class RenameColumnInEd < ActiveRecord::Migration
  def change
    rename_column :eds, :school, :name
  end
end
