class AddEdIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :ed_id, :integer
  end
end
