class RenameColumnFromNationalityToName < ActiveRecord::Migration[6.0]
  def change
    rename_column :nationalities, :nationality, :name
  end
end
