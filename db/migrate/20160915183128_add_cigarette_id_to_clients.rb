class AddCigaretteIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :cigarette_id, :integer
  end
end
