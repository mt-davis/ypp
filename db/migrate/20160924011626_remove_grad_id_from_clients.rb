class RemoveGradIdFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :grad_id, :integer
  end
end
