json.array!(@refas) do |refa|
  json.extract! refa, :id, :name
  json.url refa_url(refa, format: :json)
end
