class CreateOds < ActiveRecord::Migration
  def change
    create_table :ods do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
