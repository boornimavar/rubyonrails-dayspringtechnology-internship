class AddProductEmailToProduct < ActiveRecord::Migration[8.1]
  def change
    add_column :products, :product_email, :string
  end
end
