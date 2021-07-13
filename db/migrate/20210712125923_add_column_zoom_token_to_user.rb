class AddColumnZoomTokenToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :zoom_token, :string
  end
end
