json.array!(@rhealths) do |rhealth|
  json.extract! rhealth, :id, :name
  json.url rhealth_url(rhealth, format: :json)
end
