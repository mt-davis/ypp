json.array!(@discharges) do |discharge|
  json.extract! discharge, :id, :reason
  json.url discharge_url(discharge, format: :json)
end
