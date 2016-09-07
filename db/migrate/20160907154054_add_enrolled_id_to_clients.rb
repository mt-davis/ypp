class AddEnrolledIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :enrolled, :boolean, default: false
  end
end
