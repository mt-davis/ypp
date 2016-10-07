class RenameEmailInClients < ActiveRecord::Migration
  def change
    rename_column :clients, :email, :clientemail
  end
end
