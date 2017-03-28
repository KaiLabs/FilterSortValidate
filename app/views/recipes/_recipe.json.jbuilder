json.extract! recipe, :id, :dish, :description, :length, :ingredients, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
