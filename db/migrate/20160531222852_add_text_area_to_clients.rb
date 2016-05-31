class AddTextAreaToClients < ActiveRecord::Migration
  def change
    add_column :clients, :comments, :text
  end
end
