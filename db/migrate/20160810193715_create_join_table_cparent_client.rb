class CreateJoinTableCparentClient < ActiveRecord::Migration
  def change
    create_join_table :cparents, :clients do |t|
      # t.index [:cparent_id, :client_id]
      # t.index [:client_id, :cparent_id]
    end
  end
end
