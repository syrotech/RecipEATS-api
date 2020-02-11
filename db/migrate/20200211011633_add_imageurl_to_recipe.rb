class AddImageurlToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :imageurl, :string
  end
end
