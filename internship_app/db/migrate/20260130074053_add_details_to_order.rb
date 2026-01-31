class AddDetailsToOrder < ActiveRecord::Migration[8.1]
  def change
    add_column :orders, :part_number, :string
    add_column :orders, :price, :decimal
  end
end
