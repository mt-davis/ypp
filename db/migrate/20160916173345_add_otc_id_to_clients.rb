class AddOtcIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :otc_id, :integer
  end
end
