json.array!(@pregs) do |preg|
  json.extract! preg, :id, :name
  json.url preg_url(preg, format: :json)
end
