class ChangeTextIdToTextInClients < ActiveRecord::Migration
  def change
    change_column :clients, :text_id, :text
  end
end