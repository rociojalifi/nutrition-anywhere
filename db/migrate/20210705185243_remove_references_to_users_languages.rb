class RemoveReferencesToUsersLanguages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :language, index:true
    remove_reference :users, :nationality, index:true
  end
end
