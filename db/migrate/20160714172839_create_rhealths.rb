class CreateRhealths < ActiveRecord::Migration
  def change
    create_table :rhealths do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
