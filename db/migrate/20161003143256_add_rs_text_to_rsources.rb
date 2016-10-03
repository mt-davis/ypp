class AddRsTextToRsources < ActiveRecord::Migration
  def change
    add_column :rsources, :text_rs, :text
  end
end
