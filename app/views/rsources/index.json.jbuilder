json.array!(@rsources) do |rsource|
  json.extract! rsource, :id, :name
  json.url rsource_url(rsource, format: :json)
end
