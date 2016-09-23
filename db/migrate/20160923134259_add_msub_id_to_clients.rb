class AddMsubIdToClients < ActiveRecord::Migration
  def change
     add_column :clients, :msub, :boolean, default: false
  end
end