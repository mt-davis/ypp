class CreateMjs < ActiveRecord::Migration
  def change
    create_table :mjs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
