class ChangeColWkToText < ActiveRecord::Migration
  def change
    change_column :clients, :wk_id, :text
  end
end
