class CreateNutritionists < ActiveRecord::Migration[6.0]
  def change
    create_table :nutritionists do |t|

      t.timestamps
    end
  end
end
