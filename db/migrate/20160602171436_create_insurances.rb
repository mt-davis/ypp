class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
