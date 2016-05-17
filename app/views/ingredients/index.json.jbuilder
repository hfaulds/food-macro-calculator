json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :carbohydrates, :fat, :protein
  json.url ingredient_url(ingredient, format: :json)
end
