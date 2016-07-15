class CreateJoinTableMhealthClient < ActiveRecord::Migration
  def change
    create_join_table :mhealths, :clients do |t|
      # t.index [:mhealth_id, :client_id]
      # t.index [:client_id, :mhealth_id]
    end
  end
end
