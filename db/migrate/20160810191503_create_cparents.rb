class CreateCparents < ActiveRecord::Migration
  def change
    create_table :cparents do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
