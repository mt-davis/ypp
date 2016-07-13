class AddGradToClients < ActiveRecord::Migration
  def change
    add_column :clients, :grad, :date
  end
end
