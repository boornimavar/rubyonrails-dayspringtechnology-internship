class AddIsActiveToCustomers < ActiveRecord::Migration[8.1]
  def change
    add_column :customers, :is_active, :boolean
  end
end
