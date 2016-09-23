class AddToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :user_id, :integer
    add_column :notes, :client_id, :integer
  end
end
