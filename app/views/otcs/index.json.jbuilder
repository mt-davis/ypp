json.array!(@otcs) do |otc|
  json.extract! otc, :id, :name
  json.url otc_url(otc, format: :json)
end
