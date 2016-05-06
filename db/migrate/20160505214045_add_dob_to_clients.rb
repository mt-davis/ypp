class AddDobToClients < ActiveRecord::Migration
  def change
    add_column :clients, :dob, :date
  end
end
