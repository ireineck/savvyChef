json.array!(@specials) do |special|
  json.extract! special, :id, :title, :ingredients, :instructions
  json.url special_url(special, format: :json)
end
