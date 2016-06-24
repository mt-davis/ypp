class AddWkIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :wk_id, :integer
  end
end
