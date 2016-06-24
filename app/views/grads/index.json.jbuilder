json.array!(@grads) do |grad|
  json.extract! grad, :id, :date
  json.url grad_url(grad, format: :json)
end
