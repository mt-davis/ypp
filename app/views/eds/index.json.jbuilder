json.array!(@eds) do |ed|
  json.extract! ed, :id, :name
  json.url ed_url(ed, format: :json)
end
