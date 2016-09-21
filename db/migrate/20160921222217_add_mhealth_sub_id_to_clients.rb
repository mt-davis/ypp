class AddMhealthSubIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :mhealth_sub_id, :clients
  end
end
