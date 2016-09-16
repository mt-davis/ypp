json.array!(@mjs) do |mj|
  json.extract! mj, :id, :name
  json.url mj_url(mj, format: :json)
end
