json.array!(@cnotes) do |cnote|
  json.extract! cnote, :id, :comment
  json.url cnote_url(cnote, format: :json)
end
