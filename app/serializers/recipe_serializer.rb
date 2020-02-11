# frozen_string_literal: true

class RecipeSerializer < ActiveModel::Serializer
  attributes  :id, :title, :time, :servings, :ingredients, :instructions,
              :imageurl
  belongs_to :user
  def editable
    scope == object.user
  end
end
