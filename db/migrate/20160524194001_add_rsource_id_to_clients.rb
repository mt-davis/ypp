class AddRsourceIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :rsource_id, :integer
  end
end
