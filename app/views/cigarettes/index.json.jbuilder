json.array!(@cigarettes) do |cigarette|
  json.extract! cigarette, :id, :name
  json.url cigarette_url(cigarette, format: :json)
end
