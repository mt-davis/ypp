class AddStateIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :state_id, :integer
  end
end
