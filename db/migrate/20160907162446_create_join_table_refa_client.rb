class CreateJoinTableRefaClient < ActiveRecord::Migration
  def change
    create_join_table :refas, :clients do |t|
      # t.index [:refa_id, :client_id]
      # t.index [:client_id, :refa_id]
    end
  end
end
