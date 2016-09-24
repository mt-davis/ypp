class CreateGrad < ActiveRecord::Migration
  def change
    create_table :grads do |t|
      t.date :grad
    end
  end
end
