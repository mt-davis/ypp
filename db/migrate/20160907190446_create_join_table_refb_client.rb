class CreateJoinTableRefbClient < ActiveRecord::Migration
  def change
    create_join_table :refbs, :clients do |t|
      # t.index [:refb_id, :client_id]
      # t.index [:client_id, :refb_id]
    end
  end
end
