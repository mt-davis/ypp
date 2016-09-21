class CreateMhealthSub < ActiveRecord::Migration
  def change
    create_table :mhealth_subs do |t|
      t.boolean :name, default: :false
    end
  end
end
