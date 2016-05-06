json.array!(@clients) do |client|
  json.extract! client, :id, :firstName, :lastName, :email, :phone, :address, :city, :state, :zipcode
  json.url client_url(client, format: :json)
end
