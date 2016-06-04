class AddUserIdToCnotes < ActiveRecord::Migration
  def change
    add_column :cnotes, :user_id, :integer
  end
end
