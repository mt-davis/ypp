json.array!(@eds) do |ed|
  json.extract! ed, :id, :school
  json.url ed_url(ed, format: :json)
end
