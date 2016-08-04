class CreateDischarges < ActiveRecord::Migration
  def change
    create_table :discharges do |t|
      t.string :reason

      t.timestamps null: false
    end
  end
end
