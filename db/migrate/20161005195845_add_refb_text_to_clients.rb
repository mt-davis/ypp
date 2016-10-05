class AddRefbTextToClients < ActiveRecord::Migration
  def change
    add_column :clients, :RefbText, :text
  end
end
