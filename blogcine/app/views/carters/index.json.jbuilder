json.array!(@carters) do |carter|
  json.extract! carter, :id, :cartelera, :nombre, :rating
  json.url carter_url(carter, format: :json)
end
