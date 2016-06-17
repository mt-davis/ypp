class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :number

      t.timestamps null: false
    end
  end
end
