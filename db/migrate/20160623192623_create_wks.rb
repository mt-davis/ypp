class CreateWks < ActiveRecord::Migration
  def change
    create_table :wks do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
