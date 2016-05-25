class AddCnoteIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :cnote_id, :integer
  end
end