class CreateCollege < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
    end
  end
end
