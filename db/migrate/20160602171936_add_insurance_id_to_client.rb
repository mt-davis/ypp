class AddInsuranceIdToClient < ActiveRecord::Migration
  def change
    add_column :clients, :insurance_id, :integer
  end
end
