class CreateJoinTableRhealthClient < ActiveRecord::Migration
  def change
    create_join_table :rhealths, :clients do |t|
      # t.index [:rhealth_id, :client_id]
      # t.index [:client_id, :rhealth_id]
    end
  end
end
