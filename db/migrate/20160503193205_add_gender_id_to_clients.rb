class AddGenderIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :gender_id, :integer
  end
end
