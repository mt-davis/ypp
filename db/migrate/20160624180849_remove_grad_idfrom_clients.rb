class RemoveGradIdfromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :grad_id
  end
end
