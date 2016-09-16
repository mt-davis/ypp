json.array!(@ods) do |od|
  json.extract! od, :id, :name
  json.url od_url(od, format: :json)
end
