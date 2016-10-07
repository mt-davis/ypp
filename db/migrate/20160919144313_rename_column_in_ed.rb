class RenameColumnInEd < ActiveRecord::Migration
  def change
rename_column :client, :email, :clientemail
  end
end