json.array!(@mhealths) do |mhealth|
  json.extract! mhealth, :id, :name
  json.url mhealth_url(mhealth, format: :json)
end
