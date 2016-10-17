class AddJtTextToEds < ActiveRecord::Migration
  def change
    add_column :eds, :JtText, :text
  end
end
