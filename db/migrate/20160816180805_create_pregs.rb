class CreatePregs < ActiveRecord::Migration
  def change
    create_table :pregs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
