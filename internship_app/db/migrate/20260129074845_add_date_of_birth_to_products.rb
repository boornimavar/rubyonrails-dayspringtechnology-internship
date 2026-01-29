class AddDateOfBirthToProducts < ActiveRecord::Migration[8.1]
  def change
    add_column :products, :date_of_birth, :date
  end
end
