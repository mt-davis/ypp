class RenameColumnInGrades < ActiveRecord::Migration
  def change
    rename_column :grades, :number, :name
  end
end
