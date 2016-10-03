class AddRsTextIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :text_rs, :text
  end
end
