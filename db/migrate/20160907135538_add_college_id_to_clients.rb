class AddCollegeIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :college_id, :string
  end
end
