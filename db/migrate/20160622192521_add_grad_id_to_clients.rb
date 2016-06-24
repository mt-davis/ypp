class AddGradIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :grad_id, :integer
  end
end
