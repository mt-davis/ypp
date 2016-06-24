class ChangeColGradToDate < ActiveRecord::Migration
  def change
    change_column :clients, :grad_id, :date
  end
end
