class AddGradeIdtoClients < ActiveRecord::Migration
  def change
    add_column :clients, :grade_id, :integer
  end
end