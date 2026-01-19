class CreateMusiclabels < ActiveRecord::Migration[8.1]
  def change
    create_table :musiclabels do |t|
      t.string :name
      t.string :email
      t.integer :year

      t.timestamps
    end
  end
end
