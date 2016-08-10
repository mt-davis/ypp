class CreateJoinTableDischargeClient < ActiveRecord::Migration
  def change
    create_join_table :discharges, :clients do |t|
      # t.index [:discharge_id, :client_id]
      # t.index [:client_id, :discharge_id]
    end
  end
end
