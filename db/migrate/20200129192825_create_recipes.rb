class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :time
      t.integer :servings
      t.string :ingredients
      t.string :instructions
      t.string :imageurl

      t.timestamps
    end
  end
end
