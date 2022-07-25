class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.float :preparation_time
      t.float :cooking_time
      t.text :description
      t.boolean :public
      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
