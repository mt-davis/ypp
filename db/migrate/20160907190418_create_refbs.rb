class CreateRefbs < ActiveRecord::Migration
  def change
    create_table :refbs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
