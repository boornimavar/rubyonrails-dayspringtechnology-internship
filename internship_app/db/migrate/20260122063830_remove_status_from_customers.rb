class RemoveStatusFromCustomers < ActiveRecord::Migration[8.1]
  def change
    remove_column :customers, :status, :string
  end
end
