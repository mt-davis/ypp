class AddMjIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :mj_id, :integer
  end
end
