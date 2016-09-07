class CreateRefas < ActiveRecord::Migration
  def change
    create_table :refas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
