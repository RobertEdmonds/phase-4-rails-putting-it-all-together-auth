class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :instructions, :minutes_to_complete
  has_one :user
end
