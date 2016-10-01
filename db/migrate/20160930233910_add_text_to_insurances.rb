class AddTextToInsurances < ActiveRecord::Migration
  def change
    add_column :insurances, :text, :text
  end
end
