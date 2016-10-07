class AddSchoolToEds < ActiveRecord::Migration
  def change
    add_column :eds, :school, :text
  end
end
