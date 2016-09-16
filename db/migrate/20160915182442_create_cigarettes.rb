class CreateCigarettes < ActiveRecord::Migration
  def change
    create_table :cigarettes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
