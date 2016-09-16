class CreateOtcs < ActiveRecord::Migration
  def change
    create_table :otcs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
