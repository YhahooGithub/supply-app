json.array!(@wings) do |wing|
  json.extract! wing, :id, :name
  json.url wing_url(wing, format: :json)
end
