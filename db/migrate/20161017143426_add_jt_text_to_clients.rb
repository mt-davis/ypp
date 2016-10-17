class AddJtTextToClients < ActiveRecord::Migration
  def change
    add_column :clients, :JtText, :text
  end
end
