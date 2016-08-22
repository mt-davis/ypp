class CreateJoinTablePregClient < ActiveRecord::Migration
  def change
    create_join_table :pregs, :clients do |t|
      # t.index [:preg_id, :client_id]
      # t.index [:client_id, :preg_id]
    end
  end
end
