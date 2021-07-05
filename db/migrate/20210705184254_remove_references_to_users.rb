class RemoveReferencesToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_references :users, :languages, index:true
    remove_references :users, :nationalities, index:true
  end
end
