class AddAlcoholIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :alcohol_id, :integer
  end
end
