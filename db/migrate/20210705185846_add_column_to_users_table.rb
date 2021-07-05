class AddColumnToUsersTable < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :language, :string
    add_column :users, :nationality, :string
  end
end
