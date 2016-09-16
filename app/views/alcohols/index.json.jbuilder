json.array!(@alcohols) do |alcohol|
  json.extract! alcohol, :id, :name
  json.url alcohol_url(alcohol, format: :json)
end
