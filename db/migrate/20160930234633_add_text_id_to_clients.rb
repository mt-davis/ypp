class AddTextIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :text_id, :integer
  end
end
