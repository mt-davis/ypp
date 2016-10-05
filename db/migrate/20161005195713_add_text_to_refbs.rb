class AddTextToRefbs < ActiveRecord::Migration
  def change
    add_column :refbs, :RefbText, :text
  end
end
