class UdchangeColGradToDate < ActiveRecord::Migration
  def change
    change_column :clients, :grad_id, :date
    
     def up
        change_column :clients, :grad_id, :integer
    end

    def down
        change_column :clients, :grad_id, :date
    end

  end
end
