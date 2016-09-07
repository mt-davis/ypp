class CreateEnrolled < ActiveRecord::Migration
  def change
    create_table :enrolleds do |t|
      t.boolean :enroled, default: false
    end
  end
end
