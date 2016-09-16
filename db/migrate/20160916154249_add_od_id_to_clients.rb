class AddOdIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :od_id, :integer
  end
end
