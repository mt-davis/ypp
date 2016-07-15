class CreateMhealths < ActiveRecord::Migration
  def change
    create_table :mhealths do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
