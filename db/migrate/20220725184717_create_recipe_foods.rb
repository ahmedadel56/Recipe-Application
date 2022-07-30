class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.float :quantity
      t.belongs_to :recipe, index: true, foreign_key: true
      t.belongs_to :food, index: true, foreign_key: true
      t.timestamps
    end
  end
end
