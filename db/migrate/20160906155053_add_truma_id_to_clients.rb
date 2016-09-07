class AddTrumaIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :truma_id, :integer
  end
end
