class CreateRsources < ActiveRecord::Migration
  def change
    create_table :rsources do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
