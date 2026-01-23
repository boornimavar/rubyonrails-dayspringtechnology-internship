# class AddStatusToProducts < ActiveRecord::Migration[8.1]
#   def change
#     add_column :products, :status, :string
#   end
# end
class AddStatusToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :status, :string, default: "active", null: false
  end
end
