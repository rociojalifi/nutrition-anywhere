class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :photo, :string
    add_column :users, :role, :string
  end
end
