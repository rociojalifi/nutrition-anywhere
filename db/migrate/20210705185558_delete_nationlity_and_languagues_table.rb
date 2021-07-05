class DeleteNationlityAndLanguaguesTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :nationalities
    drop_table :languages
  end
end
