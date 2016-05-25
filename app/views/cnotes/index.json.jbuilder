json.array!(@cnotes) do |cnote|
  json.extract! cnote, :id, :description
  json.url cnote_url(cnote, format: :json)
end
