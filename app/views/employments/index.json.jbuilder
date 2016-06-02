json.array!(@employments) do |employment|
  json.extract! employment, :id, :name
  json.url employment_url(employment, format: :json)
end
