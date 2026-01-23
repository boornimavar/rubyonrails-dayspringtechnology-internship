class AddStatusToCustomers < ActiveRecord::Migration[8.1]
  def change
    add_column :customers, :status, :string
  end
end
