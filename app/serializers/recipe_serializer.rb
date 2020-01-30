# frozen_string_literal: true

class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :time, :servings, :ingredients, :instructions
  belongs_to :user
  def editable
    scope == object.user
  end
end
