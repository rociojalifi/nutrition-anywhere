class RemoveTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :nutritionists
    drop_table :patients

  end
end
