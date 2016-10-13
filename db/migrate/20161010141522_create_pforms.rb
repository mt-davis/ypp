class CreatePforms < ActiveRecord::Migration
  def change
    create_table :pforms do |t|
      t.string :pFirstName
      t.string :pLastName
      t.string :pPhone
      t.string :pAddress
      t.string :pCity
      t.string :pSatate
      t.string :pZipcode
      t.date :pDob

      t.timestamps null: false
    end
  end
end
