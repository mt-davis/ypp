class CreateMsub < ActiveRecord::Migration
  def change
    create_table :msubs do |t|
    t.boolean :msub, default: false
    end
  end
end
