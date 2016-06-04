class AddClientIdToCnotes < ActiveRecord::Migration
  def change
    add_column :cnotes, :client_id, :integer
  end
end
