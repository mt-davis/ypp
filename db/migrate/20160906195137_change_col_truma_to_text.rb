class ChangeColTrumaToText < ActiveRecord::Migration
  def change
    change_column :clients, :truma_id, :text
  end
end
