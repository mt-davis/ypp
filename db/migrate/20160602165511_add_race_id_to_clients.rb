class AddRaceIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :race_id, :integer
  end
end
