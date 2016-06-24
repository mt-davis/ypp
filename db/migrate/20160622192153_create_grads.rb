class CreateGrads < ActiveRecord::Migration
  def change
    create_table :grads do |t|
      t.date :date

      t.timestamps null: false
    end
  end
end
