class AddColumnRefreshTokenToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :zoom_refresh_token, :string
    add_column :users, :zoom_expiration, :string
  end
end
