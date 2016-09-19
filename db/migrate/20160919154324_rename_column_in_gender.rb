class RenameColumnInGender < ActiveRecord::Migration
  def change
    rename_column :genders, :gender, :name
  end
end
