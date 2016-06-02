class AddEmploymentIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :employment_id, :integer
  end
end
