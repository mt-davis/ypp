class AddGedIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :ged_id, :boolean, default: false
  end
end
