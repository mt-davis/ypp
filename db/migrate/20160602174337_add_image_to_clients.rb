class AddImageToClients < ActiveRecord::Migration
  def change
    add_column :clients, :image, :string
  end
end
