json.array!(@refbs) do |refb|
  json.extract! refb, :id, :name
  json.url refb_url(refb, format: :json)
end
