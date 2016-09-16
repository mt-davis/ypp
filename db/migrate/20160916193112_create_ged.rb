class CreateGed < ActiveRecord::Migration
  def change
    create_table :geds do |t|
      t.boolean :ged, default: false
    end
  end
end
