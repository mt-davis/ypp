json.array!(@wks) do |wk|
  json.extract! wk, :id, :name
  json.url wk_url(wk, format: :json)
end
