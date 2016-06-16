class CreateEds < ActiveRecord::Migration
  def change
    create_table :eds do |t|
      t.string :school
      t.string :grade

      t.timestamps null: false
    end
  end
end
