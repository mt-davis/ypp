class CreateTruma < ActiveRecord::Migration
  def change
    create_table :trumas do |t|
      t.text :name
    end
  end
end
