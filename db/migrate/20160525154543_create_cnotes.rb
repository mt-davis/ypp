class CreateCnotes < ActiveRecord::Migration
  def change
    create_table :cnotes do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
