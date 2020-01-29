class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :time, :servings, :ingredients, :instructions
end
