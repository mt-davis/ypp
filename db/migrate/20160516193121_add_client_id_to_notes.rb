class AddClientIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :client_id, :integer
  end
end
